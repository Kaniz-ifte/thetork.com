<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index()
    {
        $page_title = 'Index';
        $page_description = 'This Is User Index Page';

        $portfolios=ModelData('App\Project');
        $clients=ModelData('App\Client');
        $abouts=ModelData('App\About');
        $teams=ModelData('App\Team');
        $testimonials=ModelData('App\Testimonial');
        $data=[
             'portfolios'=>$portfolios,
             'clients'=>$clients,
             'abouts'=>$abouts,
             'teams'=>$teams,
             'testimonials'=>$testimonials,
        ];

        return view('pages.index', compact('page_title', 'page_description','data'));
    }


}
