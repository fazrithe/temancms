<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Exception  $exception
     * @return void
     */
    public function report(Exception $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception)
    {
         if ($this->isHttpException($exception)) {
             if ($exception->getStatusCode() == 404) {

                 return response()->view('site2.pages.404');

             } elseif ($exception->getStatusCode() == 403) {

                 return response()->view('site2.pages.403');

             } elseif ($exception->getStatusCode() == 405){

                  return response()->view('site2.pages.405');

             }
         }else{

            return parent::render($request, $exception);
         }




        // if($exception instanceof FileUnacceptableForCollection){
        //     return redirect()->back()->with('error','File not excepted');
        // }
        // if ( ! config('app.debug') && ! $this->isHttpException($exception)) {
        //     return response()->view('site.pages.404');
        // }
        // return parent::render($request, $exception);

        // if ($this->isHttpException($exception)) {
        //     if ($exception->getStatusCode() == 404) {
        //         if ($request->is('api/*')) {
        //             return response()->json(['error' => true, 'message' => 'Not Found', 'data' => ''],404);
        //         }
        //         return response()->view('errors.' . '404', [], 404);
        //     }
        // }
        // return parent::render($request, $exception);
    }
}
