<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Library\MCart;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('cart.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $added = MCart::add(
            $request->id,
            $request->image,
            $request->name,
            $request->details,
            1,
            $request->price,
            $request->slug
        );

        if($added) {
            return redirect('/cart')->with('success', 'Item was added to cart!');
        }

        return redirect('/cart')->with('success', 'Item is already in your cart');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        MCart::update($id, 'qty', (int)$request->quantity);

        return response()->json(['status' => true, 'quantity' => $request->quantity]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        MCart::remove($id);

        return back()->with('success', 'Item has been removed!');
    }
}
