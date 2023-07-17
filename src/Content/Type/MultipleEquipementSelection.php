<?php

declare(strict_types=1);

namespace App\Content\Type;

use App\Entity\Equipement;
use App\Repository\EquipementRepository;
use Sulu\Component\Content\Compat\PropertyInterface;
use Sulu\Component\Content\SimpleContentType;

class MultipleEquipementSelection extends SimpleContentType
{
    protected $repository;

    public function __construct(EquipementRepository $repository )
    {
        $this->repository = $repository;

        parent::__construct('multiple_equipement_selection', []);
    }

    /**
     * @return Equipement[]
     */
    public function getContentData(PropertyInterface $property): array
    {
        $ids = $property->getValue();

        if (empty($ids)) {
            return [];
        }

        $equipement = $this->repository->findBy(['id' => $ids]);

        $idPositions = array_flip($ids);
        usort($equipement, function (Equipement $a, Equipement $b) use ($idPositions) {
            return $idPositions[$a->getId()] - $idPositions[$b->getId()];
        });

        return $equipement;
    }

    /**
     * @return array<string, array<int>|null>
     */
    public function getViewData(PropertyInterface $property): array
    {
        return [
            'ids' => $property->getValue(),
        ];
    }
}
