<?php

namespace App\Http\Controllers;


class TeamController extends Controller
{
public function index()
{

$data=array (
    0 =>
        array (
            'name' => 'Gopal Singh Rajawat',
            'category' => 'student_council',
            'designation' => 'President',
            'contact' => '+91-9165604118',
            'facebook_link' => 'https://www.facebook.com/gopal.rajawat.100',
        ),
    1 =>
        array (
            'name' => 'Damini Vyas',
            'category' => 'student_council',
            'designation' => 'Vice President',
            'contact' => '+91-7470459491',
            'facebook_link' => 'https://www.facebook.com/damini.vyas.9',
        ),
    2 =>
        array (
            'name' => 'Devashish Tiwari',
            'category' => 'student_council',
            'designation' => 'Treasurer',
            'contact' => '+91-9407132140',
            'facebook_link' => 'https://www.facebook.com/manit.darsh',
        ),
    3 =>
        array (
            'name' => 'Kshitij Singh',
            'category' => 'student_council',
            'designation' => 'General Secretary',
            'contact' => '+91-9425831490',
            'facebook_link' => 'https://www.facebook.com/kshitijsingh97',
        ),
    4 =>
        array (
            'name' => 'Shubham Pandey',
            'category' => 'student_council',
            'designation' => 'Joint Secretary',
            'contact' => '+91-7440950435',
            'facebook_link' => 'https://www.facebook.com/profile.php?id=100004474301995&ref=br_rs',
        ),
    5 =>
        array (
            'name' => 'Atul Garg',
            'category' => 'technosearch',
            'designation' => 'Events Head',
            'contact' => '+91-9755236855',
            'facebook_link' => 'https://www.facebook.com/atul.garg.90857',
        ),
    6 =>
        array (
            'name' => 'Vivek Mall',
            'category' => 'technosearch',
            'designation' => 'Marketing Head',
            'contact' => '+91-8130034125',
            'facebook_link' => 'https://www.facebook.com/vivek.mall.7',
        ),
    7 =>
        array (
            'name' => 'Abhishek Kothapalli',
            'category' => 'technosearch',
            'designation' => 'PR & Media Head',
            'contact' => '+91-8985374126',
            'facebook_link' => 'https://www.facebook.com/abhishek.kothapalli',
        ),
    8 =>
        array (
            'name' => 'Rudra Pratap Singh',
            'category' => 'technosearch',
            'designation' => 'Hospitality Head',
            'contact' => '+91-8890098349',
            'facebook_link' => 'https://www.facebook.com/rudrapratap.singh.547',
        ),
    9 =>
        array (
            'name' => 'Nauneet Pandey',
            'category' => 'technosearch',
            'designation' => 'Live Shows',
            'contact' => '+91-9634758303',
            'facebook_link' => 'https://www.facebook.com/navneet.kumar.50999',
        ),
    10 =>
        array (
            'name' => 'Aman Gusain',
            'category' => 'technosearch',
            'designation' => 'Food & Beverages',
            'contact' => '+91-9634758303',
            'facebook_link' => 'https://www.facebook.com/aman.gusain.315',
        ),
    11 =>
        array (
            'name' => 'Rakshan Khan',
            'category' => 'technosearch',
            'designation' => 'Décor Head',
            'contact' => '+91-7977376905',
            'facebook_link' => 'https://www.facebook.com/IamRakshanKhan',
        ),
    12 =>
        array (
            'name' => 'Yaman Chourey',
            'category' => 'technosearch',
            'designation' => 'Design Head',
            'contact' => '+91-9685977803',
            'facebook_link' => 'https://www.facebook.com/yaman.chourey.9',
        ),
);

return response()->json(['data'=>$data],200);
  }
}
