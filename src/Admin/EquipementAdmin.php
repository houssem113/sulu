<?php

declare(strict_types=1);

namespace App\Admin;

use App\Entity\Equipement;
use Sulu\Bundle\AdminBundle\Admin\Admin;
use Sulu\Bundle\AdminBundle\Admin\Navigation\NavigationItem;
use Sulu\Bundle\AdminBundle\Admin\Navigation\NavigationItemCollection;
use Sulu\Bundle\AdminBundle\Admin\View\ToolbarAction;
use Sulu\Bundle\AdminBundle\Admin\View\ViewBuilderFactoryInterface;
use Sulu\Bundle\AdminBundle\Admin\View\ViewCollection;
use Sulu\Component\Webspace\Manager\WebspaceManagerInterface;

class EquipementAdmin extends Admin
{
    const EQUIPEMENT_LIST_KEY = 'equipement';

    const EQUIPEMENT_FORM_KEY = 'equipement_details';

    const EQUIPEMENT_LIST_VIEW = 'app.equipement_list';

    const EQUIPEMENT_ADD_FORM_VIEW = 'app.equipement_add_form';

    const EQUIPEMENT_EDIT_FORM_VIEW = 'app.equipement_edit_form';

    /**
     * @var ViewBuilderFactoryInterface
     */
    private $viewBuilderFactory;

    /**
     * @var WebspaceManagerInterface
     */
    private $webspaceManager;

    public function __construct(
        ViewBuilderFactoryInterface $viewBuilderFactory,
        WebspaceManagerInterface $webspaceManager
    ) {
        $this->viewBuilderFactory = $viewBuilderFactory;
        $this->webspaceManager = $webspaceManager;
    }

    public function configureNavigationItems(NavigationItemCollection $navigationItemCollection): void
    {
        
        $module = new NavigationItem('app.equipement');
        $module->setPosition(40);
        $module->setIcon('fa-newspaper-o');
        
        // si on a besion des sous menu
        // Configure a NavigationItem with a View
        $newsCategories = new NavigationItem('Equipement');
        $newsCategories->setPosition(20);
        $newsCategories->setView(static::EQUIPEMENT_LIST_VIEW);

        $module->addChild($newsCategories);

        $navigationItemCollection->add($module);
    }

    public function configureViews(ViewCollection $viewCollection): void
    {
        $locales = $this->webspaceManager->getAllLocales();

        // Configure NewsCategory List View
        $listToolbarActions = [new ToolbarAction('sulu_admin.add'), new ToolbarAction('sulu_admin.delete')];
        $listView = $this->viewBuilderFactory->createListViewBuilder(self::EQUIPEMENT_LIST_VIEW, '/equipement/:locale')
            ->setResourceKey(Equipement::RESOURCE_KEY)
            ->setListKey(self::EQUIPEMENT_LIST_KEY)
            ->setTitle('Equipement list')
            ->addListAdapters(['table'])
            ->addLocales($locales)
            ->setDefaultLocale($locales[0])
            ->setAddView(static::EQUIPEMENT_ADD_FORM_VIEW)
            ->setEditView(static::EQUIPEMENT_EDIT_FORM_VIEW)
            ->addToolbarActions($listToolbarActions);
        $viewCollection->add($listView);

        // Configure newsCategory Add View
        $addFormView = $this->viewBuilderFactory->createResourceTabViewBuilder(self::EQUIPEMENT_ADD_FORM_VIEW, '/equipement/:locale/add')
            ->setResourceKey(Equipement::RESOURCE_KEY)
            ->setBackView(static::EQUIPEMENT_LIST_VIEW)
            ->addLocales($locales);
        $viewCollection->add($addFormView);

        $addDetailsFormView = $this->viewBuilderFactory->createFormViewBuilder(self::EQUIPEMENT_ADD_FORM_VIEW . '.details', '/details')
            ->setResourceKey(Equipement::RESOURCE_KEY)
            ->setFormKey(self::EQUIPEMENT_FORM_KEY)
            ->setTabTitle('sulu_admin.details')
            ->setEditView(static::EQUIPEMENT_EDIT_FORM_VIEW)
            ->addToolbarActions([new ToolbarAction('sulu_admin.save')])
            ->setParent(static::EQUIPEMENT_ADD_FORM_VIEW);
        $viewCollection->add($addDetailsFormView);

        // Configure Equipement Edit View
        $editFormView = $this->viewBuilderFactory->createResourceTabViewBuilder(static::EQUIPEMENT_EDIT_FORM_VIEW, '/equipement/:locale/:id')
            ->setResourceKey(Equipement::RESOURCE_KEY)
            ->setBackView(static::EQUIPEMENT_LIST_VIEW)
            ->setTitleProperty('title')
            ->addLocales($locales);
        $viewCollection->add($editFormView);

        $formToolbarActions = [
            new ToolbarAction('sulu_admin.save'),
            new ToolbarAction('sulu_admin.delete'),

        ];
        $editDetailsFormView = $this->viewBuilderFactory->createFormViewBuilder(static::EQUIPEMENT_EDIT_FORM_VIEW . '.details', '/details')
            ->setResourceKey(Equipement::RESOURCE_KEY)
            ->setFormKey(self::EQUIPEMENT_FORM_KEY)
            ->setTabTitle('sulu_admin.details')
            ->addToolbarActions($formToolbarActions)
            ->setParent(static::EQUIPEMENT_EDIT_FORM_VIEW);
        $viewCollection->add($editDetailsFormView);
    }
}