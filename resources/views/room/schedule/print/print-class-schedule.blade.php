<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Class Routine - {{ $company->name }}</title>

    <style>
        /* ====== PAGE SETUP ====== */
        @page {
            size: A4 landscape;
            margin: 16mm;
        }

        * { box-sizing: border-box; }

        body{
            font-family: "DejaVu Sans", sans-serif;
            color:#111;
            margin:0;
            background:#fff;
        }

        .page{
            width: 100%;
        }

        /* ====== HEADER ====== */
        .header{
            text-align:center;
            padding-bottom: 10px;
            border-bottom: 2px solid #111;
            margin-bottom: 14px;
        }
        .header .company{
            font-size: 22px;
            font-weight: 800;
            letter-spacing: .3px;
            margin:0;
        }
        .header .meta{
            margin-top: 4px;
            font-size: 12px;
            line-height: 1.45;
            color:#333;
        }

        .titlebar{
            display:flex;
            align-items:flex-start;
            justify-content: space-between;
            gap:12px;
            margin: 10px 0 14px;
            padding: 10px 12px;
            border:1px solid #111;
        }
        .titlebar h2{
            margin:0;
            font-size: 16px;
            font-weight: 800;
        }
        .titlebar .right{
            text-align:right;
            font-size: 12px;
            line-height: 1.5;
        }
        .badge{
            display:inline-block;
            padding: 2px 8px;
            border:1px solid #111;
            font-size: 11px;
            font-weight:700;
            margin-left: 6px;
        }

        /* ====== TABLE ====== */
        table{
            width:100%;
            border-collapse: collapse;
            table-layout: fixed;
            font-size: 11px;
        }
        thead th{
            border:1px solid #111;
            padding: 7px 4px;
            background:#f2f2f2;
            font-weight:800;
        }
        tbody td{
            border:1px solid #111;
            padding: 6px 4px;
            vertical-align: top;
            text-align:center;
        }
        .daycell{
            font-weight:800;
            background:#fafafa;
            width: 10%;
        }

        .cell-subject{
            font-weight:800;
            font-size: 11.5px;
            margin-bottom: 2px;
        }
        .cell-teacher{
            font-size: 10.8px;
            color:#333;
            margin-bottom: 2px;
        }
        .cell-time{
            font-size: 10px;
            color:#555;
        }
        .free{
            color:#666;
            font-style: italic;
        }

        /* ====== FOOTER ====== */
        .footer{
            margin-top: 3.2rem;
            display:flex;
            justify-content: space-between;
            align-items:flex-end;
            gap: 12px;
            font-size: 11px;
            color:#333;
        }
        .sign{
            width: 32%;
            text-align:center;
        }
        .sign .line{
            border-top: 1px solid #111;
            margin-bottom: 6px;
            height:1px;
        }

        .note{
            margin-top: 10px;
            font-size: 9.5px;
            color:#444;
            text-align:center;
        }

        /* ====== PRINT BEHAVIOR ====== */
        .no-print{ display:inline-flex; }

        @media print{
            .no-print{ display:none !important; }
            .titlebar{ page-break-inside: avoid; }
            table, tr, td, th { page-break-inside: avoid; }
        }

        /* Optional: keep header on next pages (browser support varies) */
        thead { display: table-header-group; }
        tfoot { display: table-footer-group; }

        /* Small print button */
        .btn{
            border:1px solid #111;
            padding: 6px 10px;
            font-size: 12px;
            font-weight: 700;
            background:#fff;
            cursor:pointer;
        }
        .btn:hover{ background:#f2f2f2; }
    </style>
</head>
<body>
<div class="page">

    @php
        $days = ['Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday'];
        // Controller থেকে classSchedules পাঠালেও হবে, এখানে schedules আছে
        $class = $schedules->first()?->classRoom;
        $generatedAt = now()->format('d M Y, h:i A');
    @endphp

    <!-- HEADER -->
    <div class="header">
        <p class="company">{{ $company->name }}</p>
        <div class="meta">
            <div>{{ $company->address }}</div>
            <div>Email: {{ $company->email }} | Phone: {{ $company->phone }}</div>
        </div>
    </div>

    <!-- TITLE BAR -->
    <div class="titlebar">
        <h2>
            Class Routine
        </h2>
        <div>            
            <div style="font-size:12px; margin-top:4px;">
                Class: <strong>{{ $class->name ?? 'N/A' }}</strong>
                @if(!empty($class->section))
                    <span class="badge">Section: {{ $class->section }}</span>
                @endif
            </div>
        </div>

        <div class="right">
            <div><strong>Generated:</strong> {{ $generatedAt }}</div>
            <div class="no-print" style="margin-top:6px;">
                <button class="btn" onclick="window.print()">Print</button>
            </div>
        </div>
    </div>

    <!-- TABLE -->
    <table>
        <thead>
        <tr>
            <th>Day</th>
            @for($i = 1; $i <= 8; $i++)
                <th>Period {{ $i }}</th>
            @endfor
        </tr>
        </thead>

        <tbody>
        @foreach($days as $day)
            @php
                $daySchedules = $schedules->where('day', $day);
            @endphp
            <tr>
                <td class="daycell">{{ $day }}</td>

                @for($p = 1; $p <= 8; $p++)
                    @php
                        $period = $daySchedules->firstWhere('period', $p);
                    @endphp

                    @if($period)
                        <td>
                            <div class="cell-subject">{{ $period->subject->name ?? 'N/A' }}</div>
                            <div class="cell-teacher">
                                {{ trim(($period->teacher->first_name ?? '').' '.($period->teacher->last_name ?? '')) ?: '—' }}
                            </div>
                            <div class="cell-time">
                                {{ $period->start_time ? \Carbon\Carbon::parse($period->start_time)->format('h:i A') : '—' }}
                                -
                                {{ $period->end_time ? \Carbon\Carbon::parse($period->end_time)->format('h:i A') : '—' }}
                            </div>
                        </td>
                    @else
                        <td class="free">Free</td>
                    @endif
                @endfor
            </tr>
        @endforeach
        </tbody>
    </table>

    <div class="note">
        Note: Maximum 8 periods per day.
    </div>

    <!-- SIGNATURE + FOOTER -->
    <div class="footer">
        <div class="sign">
            <div class="line"></div>
            <div>Prepared By</div>
        </div>

        <div class="sign">
            <div class="line"></div>
            <div>Checked By</div>
        </div>

        <div class="sign">
            <div class="line"></div>
            <div>Approved By</div>
        </div>
    </div>

    <div class="note" style="margin-top:12px;">
        Developed by <strong>BGMIT</strong> || +880 1533-021557
    </div>
</div>


<script>
    window.onload = function () {
        window.print();
        setTimeout(() => {
            window.close();
        }, 800);
    }
</script>

</body>
</html>
