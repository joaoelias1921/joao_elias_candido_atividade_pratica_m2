<?php

namespace App\Widgets;

use TCG\Voyager\Widgets\BaseDimmer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class Vendas extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Venda::count();
        $string = 'Vendas';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-basket',
            'title'  => "{$count} {$string}",
            'text'   => __('Visualize, crie, edite e remova as vendas existentes neste CRUD!', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => 'Vendas',
                'link' => route('voyager.vendas.index'),
            ],
            'image' => '/bg-vendas.jpg',
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', Voyager::model('User'));
    }
}
