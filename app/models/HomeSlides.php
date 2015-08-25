<?php

use Illuminate\Database\Eloquent\ModelNotFoundException;
use Carbon\Carbon;

class HomeSlides extends Eloquent {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'homeSlides';

    /**
     * Add new Video
     *
     * @return bool
     */
    public function add($title, $desc, $image, $updatedby, $position)
    {
        $validator = Validator::make(
            array(
                'title'     => $title,
                'desc'      => $desc,
                'image'     => $image,
                'updatedby' => $updatedby,
                'position'  => $position,
            ),
            array(
                'title'     => array('required'),
                'desc'      => array(),
                'image'     => array('required'),
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

            $HomeSlides = new HomeSlides;
            $HomeSlides->title       = $title;
            $HomeSlides->desc        = $desc;
            $HomeSlides->image       = $image;
            $HomeSlides->position    = $position;
            $HomeSlides->updatedby   = $updatedby;
            $HomeSlides->active  = 1;
            $HomeSlides->save();

            return true;
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
                'title'     => $title,
                'desc'      => $desc,
                'image'     => $image,
                'updatedby' => $updatedby,
                'position'  => $position,
            ),
            array(
                'title'     => array('required'),
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
            $HomeSlides = HomeSlides::findOrFail($HomeSlides_id);



            $HomeSlides->title       = $title;
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
            $HomeSlides_id = HomeSlides::findOrFail($HomeSlides_id);

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
            $HomeSlides_id = HomeSlides::findOrFail($HomeSlides_id);

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

        // Validation did not pass
        if ($validator->fails())
        {
           throw new Exception( $validator->messages() );
        }

        try
        {
            $HomeSlides_id = HomeSlides::findOrFail($HomeSlides_id);
            $HomeSlides_id->delete();
            return true;
        }
        catch(Exception $ex)
        {
            return $ex;
        }

    }


}
