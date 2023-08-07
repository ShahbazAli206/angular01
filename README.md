the gbss file is needed for laravel database from where api get data and send to angular.


the api needed in laravel routes/api.php are as follow;

Route::get('/categories_angular', function () {
    $categories = DB::table('categories')
        ->get();
    return response()->json($categories);
});


Route::get('/TopProductsService', function () {
    Log::error('this is the request for top 5 items ');

    $categories = DB::table('services')
    ->orderBy('created_at', 'desc')->take(5)->get();
    return response()->json($categories);
});


Route::get('/products_angular', function (Request $request) {
    $category_id = $request->query('cardId');
    $cardId = intval($category_id);

    Log::error('this is the request Card ID i get ==> '.  $cardId);

    $categories = DB::table('services')
    ->where('category_id', $cardId)
    ->get();
    return response()->json($categories);
});

Route::post('/angularOrderPlacement', function (Request $request) {
    Log::error('this is the angularOrderPlacement ==> '.  json_encode($request->cartItems));
    // "currentDate":"07 August 2023","totalAmount":4800,"cartItems":

    $validatedData = $request->validate([
        'totalAmount' => 'required',
        'cartItems' => 'required',
    ]);

    // Insert the order data directly into the database using the DB facade
    $orderId = DB::table('orders')->insertGetId([
        'totalAmount' => $validatedData['totalAmount'],
        'status' => "pending",

        // Add more fields as needed
    ]);
    Log::error('this is the orderId ==> '.  $orderId);

    foreach ($request->cartItems as $cartItem) {
        // You can access each item in the $cartItem variable
        $service_id = $cartItem['id'];
        $category_id = $cartItem['category_id'];
        $order_id = $orderId;
        $quantity = $cartItem['count'];

        // Perform your logic here for each cart item
        // For example, insert each item into the database, etc.

        // Example: Insert into the orders table
        DB::table('items')->insert([
            'service_id' => $service_id,
            'category_id' => $category_id,
            'order_id' => $order_id,
            'quantity' => $quantity,
            // Add more fields as needed
        ]);
    }
    // Return a response indicating that the order was created successfully
    return response()->json(['message' => 'Order created successfully', 'order_id' => $orderId, 'orderAmount' => $validatedData['totalAmount']], 201);
});





start angular project by running the 
ng serve -watch
in terminal

and laravel 
php artisan serve
in terminal