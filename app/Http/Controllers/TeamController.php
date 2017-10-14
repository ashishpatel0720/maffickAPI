<?php

namespace App\Http\Controllers;


class TeamController extends Controller
{
public function index()
{

$data=array (
        array (
            'name' => 'Gopal Singh Rajawat',
            'category' => 'student_council',
            'designation' => 'President',
            'contact' => '+91-9165604118',
            'facebook_link' => 'https://www.facebook.com/gopal.rajawat.100',
        ),
        array (
            'name' => 'Damini Vyas',
            'category' => 'student_council',
            'designation' => 'Vice President',
            'contact' => '+91-7470459491',
            'facebook_link' => 'https://www.facebook.com/damini.vyas.9',
        ),
        array (
            'name' => 'Devashish Tiwari',
            'category' => 'student_council',
            'designation' => 'Treasurer',
            'contact' => '+91-9407132140',
            'facebook_link' => 'https://www.facebook.com/manit.darsh',
        ),
        array (
            'name' => 'Kshitij Singh',
            'category' => 'student_council',
            'designation' => 'General Secretary',
            'contact' => '+91-9425831490',
            'facebook_link' => 'https://www.facebook.com/kshitijsingh97',
        ),
        array (
            'name' => 'Shubham Pandey',
            'category' => 'student_council',
            'designation' => 'Joint Secretary',
            'contact' => '+91-7440950435',
            'facebook_link' => 'https://www.facebook.com/profile.php?id=100004474301995&ref=br_rs',
        ),

         array (
            'name' => 'Ashish Patel',
            'category' => 'technosearch',
            'designation' => 'Web Developer',
            'contact' => '+91-7705047900',
            'facebook_link' => 'https://www.facebook.com/ashishpatel0720',
        ),
        array (
            'name' => 'Manohar Lakkoju',
            'category' => 'technosearch',
            'designation' => 'Web Developer',
            'contact' => '+91-9440365901',
            'facebook_link' => 'https://www.facebook.com/manohar.lakkoju.9',
        ),
        array (
            'name' => 'Bharat Sunel',
            'category' => 'technosearch',
            'designation' => 'Android Developer',
            'contact' => '+91-8889731492',
            'facebook_link' => 'https://www.facebook.com/bharatsunel',
        ),
        array (
            'name' => 'Sawai Singh Rathore',
            'category' => 'technosearch',
            'designation' => 'Management Head',
            'contact' => '+91-7694879090',
            'facebook_link' => 'https://www.facebook.com/Sawai.Rathore.7773',
        ),
        array (
            'name' => 'Atul Garg',
            'category' => 'technosearch',
            'designation' => 'Events Head',
            'contact' => '+91-9755236855',
            'facebook_link' => 'https://www.facebook.com/atul.garg.90857',
        ),
        array (
            'name' => 'Vivek Mall',
            'category' => 'technosearch',
            'designation' => 'Marketing Head',
            'contact' => '+91-8130034125',
            'facebook_link' => 'https://www.facebook.com/vivek.mall.7',
        ),
        array (
            'name' => 'Abhishek Kothapalli',
            'category' => 'technosearch',
            'designation' => 'PR & Media Head',
            'contact' => '+91-8985374126',
            'facebook_link' => 'https://www.facebook.com/abhishek.kothapalli',
        ),
        array (
            'name' => 'Rudra Pratap Singh',
            'category' => 'technosearch',
            'designation' => 'Hospitality Head',
            'contact' => '+91-8890098349',
            'facebook_link' => 'https://www.facebook.com/rudrapratap.singh.547',
        ),
        array (
            'name' => 'Nauneet Pandey',
            'category' => 'technosearch',
            'designation' => 'Live Shows',
            'contact' => '+91-9634758303',
            'facebook_link' => 'https://www.facebook.com/navneet.kumar.50999',
        ),
        array (
            'name' => 'Aman Gusain',
            'category' => 'technosearch',
            'designation' => 'Food & Beverages',
            'contact' => '+91-9634758303',
            'facebook_link' => 'https://www.facebook.com/aman.gusain.315',
        ),
        array (
            'name' => 'Rakhshan Khan',
            'category' => 'technosearch',
            'designation' => 'Décor Head',
            'contact' => '+91-7977376905',
            'facebook_link' => 'https://www.facebook.com/IamRakshanKhan',
        ),
        array (
            'name' => 'Yaman Chourey',
            'category' => 'technosearch',
            'designation' => 'Design Head',
            'contact' => '+91-9685977803',
            'facebook_link' => 'https://www.facebook.com/yaman.chourey.9',
        ),
     array (
            'name' => 'Abhisek Raj',
            'category' => 'technosearch',
            'designation' => 'Graffitti Head',
            'contact' => '+91-8236892418',
            'facebook_link' => ' https://www.facebook.com/01abhiraj',
        ),
);

return response()->json(['data'=>$data],200);
  }
}
