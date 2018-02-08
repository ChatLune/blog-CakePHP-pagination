<?php
namespace App\Controller;

use Cake\View\Exception\MissingTemplateException;
use App\Controller\AppController;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\Core\Configure;

class ArticlesController extends AppController
{
    public $paginate = [
        'limit' => 5,
        'order' => [
            'created' => 'desc'
        ]
    ];

    public function initialize()
    {
        parent::initialize();
        $this->loadComponent('Paginator');
    }

     public function index()
    {
        $articles = $this->Articles->find('all')
            ->where(['delete_flg' => '0']);
        $articles = $this->paginate($articles);
        $this->set(compact('articles'));
    }

}
