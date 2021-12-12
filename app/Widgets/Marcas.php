<?php

namespace App\Widgets;

use TCG\Voyager\Widgets\BaseDimmer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class Marcas extends BaseDimmer
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
        $count = \App\Marca::count();
        $string = 'Marcas';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-medal-rank-star',
            'title'  => "{$count} {$string}",
            'text'   => __('Visualize, crie, edite e remova as marcas existentes neste CRUD!', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => 'Marcas',
                'link' => route('voyager.marcas.index'),
            ],
            'image' => '/bg-marcas.jpg',
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
