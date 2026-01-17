@component('mail::message')
# Attendance Notice (Absent)

Dear Parent/Guardian,  
This is to inform you that **{{ $student->first_name }} {{ $student->last_name }}** did not attend school today.

@component('mail::panel')
**Student Details**  
- **Name:** {{ $student->first_name }} {{ $student->last_name }}  
- **Roll No:** {{ $student->roll_number ?? 'N/A' }}  
- **Class:** {{ $student->room->name ?? 'N/A' }}  
- **Section:** {{ $student->room->section ?? 'N/A' }}  
- **Date:** {{ \Carbon\Carbon::parse($date)->format('d M, Y') }}  
@endcomponent

If this absence is due to a valid reason (e.g., illness), please inform the class teacher.

Thanks,  
**School Administration**
@endcomponent
