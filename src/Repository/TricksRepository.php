<?php

namespace App\Repository;

use App\Entity\Tricks;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Tricks>
 *
 * @method Tricks|null find($id, $lockMode = null, $lockVersion = null)
 * @method Tricks|null findOneBy(array $criteria, array $orderBy = null)
 * @method Tricks[]    findAll()
 * @method Tricks[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TricksRepository extends ServiceEntityRepository
{
	public function __construct(ManagerRegistry $registry)
	{
		parent::__construct($registry, Tricks::class);
	}

	public function add(Tricks $entity, bool $flush = false): void
	{
		$this->getEntityManager()->persist($entity);

		if ($flush) {
			$this->getEntityManager()->flush();
		}
	}

	public function remove(Tricks $entity, bool $flush = false): void
	{
		$this->getEntityManager()->remove($entity);

		if ($flush) {
			$this->getEntityManager()->flush();
		}
	}


	/**
	 * @return void
	 */
	public function getPaginatedTricks($page, $limit)
	{
		$query = $this->createQueryBuilder('t')
			->orderBy('t.date', 'DESC')
			->setFirstResult(($page * $limit) - $limit)
			->setMaxResults($limit);
		return $query->getQuery()->getResult();
	}

	/**
	 * @return void
	 */
	public function getTotalTricks()
	{
		$query = $this->createQueryBuilder('t')
			->select('COUNT(t)');

		return $query->getQuery()->getSingleScalarResult();
	}
}
