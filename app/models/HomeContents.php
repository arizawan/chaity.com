<?php

use Illuminate\Database\Eloquent\ModelNotFoundException;
use Carbon\Carbon;

class HomeContents extends Eloquent {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'homeContent';

    /**
     * Add new Video
     *
     * @return bool
     */
    public function add($title, $desc, $image, $updatedby, $position, $ttl)
    {
        $validator = Validator::make(
            array(
                'type'     => $title,
                'desc'      => $desc,
                'image'     => $image,
                'updatedby' => $updatedby,
                'position'  => $position,
                'title'  => $ttl,
            ),
            array(
                'type'     => array('required'),
                'desc'      => array(),
                'image'     => array(),
                'updatedby' => array('required'),
                'position'  => array('required'),
                'title'  => array()
            )
        );



        // Validation did not pass
        if ($validator->fails())
        {
           throw new Exception( $validator->messages() );
        }

        try
        {
            //dd($title);
            $HomeSlides = new HomeContents;
            $HomeSlides->type       = $title;
            $HomeSlides->title       = $ttl;
            $HomeSlides->desc        = $desc;
            $HomeSlides->image       = $image;
            $HomeSlides->position    = $position;
            $HomeSlides->updatedby   = $updatedby;
            $HomeSlides->active  = 1;
            $HomeSlides->save();

            return $HomeSlides;
        }
        catch(Exception $ex)
        {
            return $ex;
        }

    }

    /**
     * Update Videos
     *
     * @return bool
     */
    public function updateData($title, $desc, $image, $updatedby, $position, $HomeSlides_id)
    {

        $validator = Validator::make(
            array(
                'type'     => $title,
                'desc'      => $desc,
                'image'     => $image,
                'updatedby' => $updatedby,
                'position'  => $position,
            ),
            array(
                'type'     => array('required'),
                'desc'      => array(),
                'image'     => array(),
                'updatedby' => array('required'),
                'position'  => array('required')
            )
        );

        // Validation did not pass
        if ($validator->fails())
        {
           throw new Exception( $validator->messages() );
        }

        try
        {
            $HomeSlides = HomeContents::findOrFail($HomeSlides_id);



            $HomeSlides->type       = $title;
            $HomeSlides->desc        = $desc;
            if($image){
                $HomeSlides->image   = $image;
            }
            $HomeSlides->position    = $position;
            $HomeSlides->updatedby   = $updatedby;

            $HomeSlides->save();

            return true;
        }
        catch(Exception $ex)
        {
            return $ex;
        }

    }

    /**
     * Active/Inactive Videos
     *
     * @return bool
     */
    public function changeStatus($HomeSlides_id, $status)
    {
        $validator = Validator::make(
            array(
                'status'   => $status,
                'HomeSlides_id' => $HomeSlides_id
            ),
            array(
                'status'    => array('required'),
                'HomeSlides_id'  =>  array('required')
            )
        );

        // Validation did not pass
        if ($validator->fails())
        {
           throw new Exception( $validator->messages() );
        }

        try
        {
            $HomeSlides_id = HomeContents::findOrFail($HomeSlides_id);

            $HomeSlides_id->active  = $status;
            $HomeSlides_id->save();

            return true;
        }
        catch(Exception $ex)
        {
            return $ex;
        }

    }

    /**
     * Change Video Position
     *
     * @return bool
     */
    public function changePosition($HomeSlides_id, $position)
    {
        $validator = Validator::make(
            array(
                'position'   => $position,
                'HomeSlides_id' => $HomeSlides_id
            ),
            array(
                'position'    => array('required'),
                'HomeSlides_id'  =>  array('required')
            )
        );

        // Validation did not pass
        if ($validator->fails())
        {
           throw new Exception( $validator->messages() );
        }

        try
        {
            $HomeSlides_id = HomeContents::findOrFail($HomeSlides_id);

            $HomeSlides_id->position  = $position;
            $HomeSlides_id->save();

            return true;
        }
        catch(Exception $ex)
        {
            return $ex;
        }

    }

    /**
     * Delete Videos
     *
     * @return bool
     */
    public function deleteData($HomeSlides_id)
    {
        $validator = Validator::make(
            array(
                'HomeSlides_id' => $HomeSlides_id
            ),
            array(
                'HomeSlides_id'  =>  array('required')
            )
        );
        //dd($HomeSlides_id);
        // Validation did not pass
        if ($validator->fails())
        {
           throw new Exception( $validator->messages() );
        }

        try
        {
            $HomeSlides_id = HomeContents::findOrFail($HomeSlides_id);
            $HomeSlides_id->delete();
            return true;
        }
        catch(Exception $ex)
        {
            return $ex;
        }

    }


}
