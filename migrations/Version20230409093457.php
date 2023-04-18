<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230409093457 extends AbstractMigration
{
	public function getDescription(): string
	{
		return '';
	}

	public function up(Schema $schema): void
	{
		// this up() migration is auto-generated, please modify it to your needs
		$this->addSql('ALTER TABLE images ADD user_id INT DEFAULT NULL');
		$this->addSql('ALTER TABLE images ADD CONSTRAINT FK_E01FBE6AA76ED395 FOREIGN KEY (user_id) REFERENCES users (id)');
		$this->addSql('CREATE UNIQUE INDEX UNIQ_E01FBE6AA76ED395 ON images (user_id)');
		$this->addSql('CREATE UNIQUE INDEX UNIQ_E1D902C12B36786B ON tricks (title)');
	}

	public function down(Schema $schema): void
	{
		// this down() migration is auto-generated, please modify it to your needs
		$this->addSql('ALTER TABLE images DROP FOREIGN KEY FK_E01FBE6AA76ED395');
		$this->addSql('DROP INDEX UNIQ_E01FBE6AA76ED395 ON images');
		$this->addSql('ALTER TABLE images DROP user_id');
		$this->addSql('DROP INDEX UNIQ_E1D902C12B36786B ON tricks');
	}
}
