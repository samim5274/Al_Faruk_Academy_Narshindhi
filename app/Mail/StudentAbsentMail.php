<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class StudentAbsentMail extends Mailable
{
    use Queueable, SerializesModels;

    public $student;
    public $date;

    
    public function __construct($student, $date)
    {
        $this->student = $student;
        $this->date = $date;
    }

    public function build()
    {
        return $this->subject('Attendance Notice: Student Absent')
            ->markdown('email.absent');
    }
}
