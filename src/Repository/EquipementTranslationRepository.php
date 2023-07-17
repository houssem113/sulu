<?php

declare(strict_types=1);

namespace App\Repository;

use App\Entity\EquipementTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method EquipementTranslationRepository|null find($id, $lockMode = null, $lockVersion = null)
 * @method EquipementTranslationRepository|null findOneBy(array $criteria, array $orderBy = null)
 * @method EquipementTranslationRepository[]    findAll()
 * @method EquipementTranslationRepository[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 *
 * @extends ServiceEntityRepository<EquipementTranslationRepository>
 */
class EquipementTranslationRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, EquipementTranslation::class);
    }
}