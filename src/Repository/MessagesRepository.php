<?php

namespace App\Repository;

use App\Entity\Messages;
use App\Entity\Tricks;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Messages>
 *
 * @method Messages|null find($id, $lockMode = null, $lockVersion = null)
 * @method Messages|null findOneBy(array $criteria, array $orderBy = null)
 * @method Messages[]    findAll()
 * @method Messages[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MessagesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Messages::class);
    }

    public function add(Messages $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Messages $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    /**
     * @return void
     */
    public function getPaginatedMessages($page, $limit, Tricks $trick)
    {
        $query = $this->createQueryBuilder('m')
            ->where('m.trick = :trick')
            ->orderBy('m.date', 'DESC')
            ->setParameter('trick', $trick)
            ->setMaxResults($limit)
            ->setFirstResult(($page * $limit) - $limit)
            ->setMaxResults($limit);

        return $query->getQuery()->getResult();
    }

    /**
     * @return void
     */
    public function getTotalMessages($trick)
    {
        $query = $this->createQueryBuilder('m')
            ->select('COUNT(m.trick)')
            ->where('m.trick = :trick')
            ->setParameter('trick', $trick);
        return $query->getQuery()->getSingleScalarResult();
    }
}
