<?php

namespace App\Http\Controllers;

use App\Http\Middleware\AdminRoleCheck;
use App\User;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware(AdminRoleCheck::class);
    }
    
    public function index() {
        $users = User::all();

        return view('users.index', compact('users'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        if($user->delete()) {
            return back()->with('success', 'User moved to Trash!');
        }

        return back()->with('error', 'Could not delete the User!');
    }

    public function trashed() {
        $users = User::onlyTrashed()->get();

        return view('users.trashed', compact('users'));
    }

    public function restore($id) {
        if($post = User::onlyTrashed()->where('id', $id)) {
            $post->restore();

            return back()->with('success', 'User restored successfully');
        }
    }
}