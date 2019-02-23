<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\ProductImage;
use Image;

class AdminProductController extends Controller
{
  public function index()
  {
    $products = Product::orderBy('id', 'desc')->get();
    return view('admin.pages.product.index')->with('products', $products);
  }

  public function create()
  {
    return view('admin.pages.product.create');
  }

  public function edit($id)
  {
    $product = Product::find($id);
    return view('admin.pages.product.edit')->with('product', $product);
  }

  public function store(Request $request)
  {
    // validate data
    $request->validate([
      'title' => 'required|max:150',
      'description' => 'required',
      'price' => 'required|numeric',
      'quantity' => 'required|numeric',
    ]);

    $product = new Product;
    $product->title = $request->title;
    $product->description = $request->description;
    $product->price = $request->price;
    $product->quantity = $request->quantity;

    $product->slug = str_slug($product->title);
    $product->category_id = 1;
    $product->brand_id = 1;
    $product->admin_id = 1;
    $product->save();

    // multiple image insert
    if (count($request->product_image) > 0) {
      foreach ($request->product_image as $image) {
        $img_name = time() . str_random(5) . '.' . $image->getClientOriginalExtension();
        $location = public_path('/images/products/'.$img_name);
        Image::make($image)->save($location);

        $product_image = new ProductImage;
        $product_image->product_id = $product->id;
        $product_image->image = $img_name;
        $product_image->save();

      }
    }



    return redirect()->route('admin.product.create');

  }

  public function update(Request $request, $id)
  {
    // validate data
    $request->validate([
      'title' => 'required|max:150',
      'description' => 'required',
      'price' => 'required|numeric',
      'quantity' => 'required|numeric',
    ]);

    $product = Product::find($id);
    $product->title = $request->title;
    $product->description = $request->description;
    $product->price = $request->price;
    $product->quantity = $request->quantity;


    $product->save();



    return redirect()->route('admin.products');

  }
  public function delete($id)
  {
    $product = Product::find($id);
    if(!is_null($product)){
       $product->delete();

        session()->flash('success', 'product has deleted successfully.!!');
        return back();
    }

  }
}
