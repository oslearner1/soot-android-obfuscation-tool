.class public interface abstract Lcom/vivo/vcalendar/CalendarContract$EventsRawTimesColumns;
.super Ljava/lang/Object;


# static fields
.field public static final DTEND_2445:Ljava/lang/String;

.field public static final DTSTART_2445:Ljava/lang/String;

.field public static final EVENT_ID:Ljava/lang/String;

.field public static final LAST_DATE_2445:Ljava/lang/String;

.field public static final ORIGINAL_INSTANCE_TIME_2445:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsRawTimesColumns;->EVENT_ID:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsRawTimesColumns;->DTSTART_2445:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsRawTimesColumns;->DTEND_2445:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsRawTimesColumns;->ORIGINAL_INSTANCE_TIME_2445:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_4

    :goto_4
    sput-object v1, Lcom/vivo/vcalendar/CalendarContract$EventsRawTimesColumns;->LAST_DATE_2445:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "event_id"

    goto :goto_0

    :cond_1
    const-string v0, "dtstart2445"

    goto :goto_1

    :cond_2
    const-string v0, "dtend2445"

    goto :goto_2

    :cond_3
    const-string v0, "originalInstanceTime2445"

    goto :goto_3

    :cond_4
    const-string v1, "lastDate2445"

    goto :goto_4
.end method
