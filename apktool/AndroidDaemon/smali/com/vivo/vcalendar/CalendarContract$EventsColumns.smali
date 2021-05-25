.class public interface abstract Lcom/vivo/vcalendar/CalendarContract$EventsColumns;
.super Ljava/lang/Object;


# static fields
.field public static final ACCESS_CONFIDENTIAL:I = 0x1

.field public static final ACCESS_DEFAULT:I = 0x0

.field public static final ACCESS_LEVEL:Ljava/lang/String;

.field public static final ACCESS_PRIVATE:I = 0x2

.field public static final ACCESS_PUBLIC:I = 0x3

.field public static final ALL_DAY:Ljava/lang/String; = "allDay"

.field public static final AVAILABILITY:Ljava/lang/String;

.field public static final AVAILABILITY_BUSY:I = 0x0

.field public static final AVAILABILITY_FREE:I = 0x1

.field public static final AVAILABILITY_TENTATIVE:I = 0x2

.field public static final CALENDAR_ID:Ljava/lang/String; = "calendar_id"

.field public static final CAN_INVITE_OTHERS:Ljava/lang/String; = "canInviteOthers"

.field public static final CUSTOM_APP_PACKAGE:Ljava/lang/String;

.field public static final CUSTOM_APP_URI:Ljava/lang/String;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DISPLAY_COLOR:Ljava/lang/String;

.field public static final DTEND:Ljava/lang/String; = "dtend"

.field public static final DTSTART:Ljava/lang/String; = "dtstart"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EVENT_COLOR:Ljava/lang/String;

.field public static final EVENT_COLOR_KEY:Ljava/lang/String;

.field public static final EVENT_END_TIMEZONE:Ljava/lang/String;

.field public static final EVENT_LOCATION:Ljava/lang/String; = "eventLocation"

.field public static final EVENT_TIMEZONE:Ljava/lang/String; = "eventTimezone"

.field public static final EXDATE:Ljava/lang/String; = "exdate"

.field public static final EXRULE:Ljava/lang/String; = "exrule"

.field public static final GUESTS_CAN_INVITE_OTHERS:Ljava/lang/String; = "guestsCanInviteOthers"

.field public static final GUESTS_CAN_MODIFY:Ljava/lang/String; = "guestsCanModify"

.field public static final GUESTS_CAN_SEE_GUESTS:Ljava/lang/String; = "guestsCanSeeGuests"

.field public static final HAS_ALARM:Ljava/lang/String; = "hasAlarm"

.field public static final HAS_ATTENDEE_DATA:Ljava/lang/String; = "hasAttendeeData"

.field public static final HAS_EXTENDED_PROPERTIES:Ljava/lang/String; = "hasExtendedProperties"

.field public static final LAST_DATE:Ljava/lang/String; = "lastDate"

.field public static final LAST_SYNCED:Ljava/lang/String;

.field public static final ORGANIZER:Ljava/lang/String; = "organizer"

.field public static final ORIGINAL_ALL_DAY:Ljava/lang/String; = "originalAllDay"

.field public static final ORIGINAL_ID:Ljava/lang/String;

.field public static final ORIGINAL_INSTANCE_TIME:Ljava/lang/String; = "originalInstanceTime"

.field public static final ORIGINAL_SYNC_ID:Ljava/lang/String;

.field public static final RDATE:Ljava/lang/String; = "rdate"

.field public static final RRULE:Ljava/lang/String; = "rrule"

.field public static final SELF_ATTENDEE_STATUS:Ljava/lang/String; = "selfAttendeeStatus"

.field public static final STATUS:Ljava/lang/String; = "eventStatus"

.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_CONFIRMED:I = 0x1

.field public static final STATUS_TENTATIVE:I = 0x0

.field public static final SYNC_DATA1:Ljava/lang/String;

.field public static final SYNC_DATA10:Ljava/lang/String;

.field public static final SYNC_DATA2:Ljava/lang/String;

.field public static final SYNC_DATA3:Ljava/lang/String;

.field public static final SYNC_DATA4:Ljava/lang/String;

.field public static final SYNC_DATA5:Ljava/lang/String;

.field public static final SYNC_DATA6:Ljava/lang/String;

.field public static final SYNC_DATA7:Ljava/lang/String;

.field public static final SYNC_DATA8:Ljava/lang/String;

.field public static final SYNC_DATA9:Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->EVENT_COLOR:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->EVENT_COLOR_KEY:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_2
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->DISPLAY_COLOR:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "syncAdapterData"

    :goto_3
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA1:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_4
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA2:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_5
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA3:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_6
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA4:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_7
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA5:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_8
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA6:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_9
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA7:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_a
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA8:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_b
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA9:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_d

    move-object v0, v1

    :goto_c
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->SYNC_DATA10:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_e

    move-object v0, v1

    :goto_d
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->LAST_SYNCED:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_e
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->EVENT_END_TIMEZONE:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_10

    const-string v0, "visibility"

    :goto_f
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->ACCESS_LEVEL:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_11

    move-object v0, v1

    :goto_10
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->AVAILABILITY:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->b:Z

    if-eqz v0, :cond_12

    :cond_0
    const-string v0, "originalEvent"

    :goto_11
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->ORIGINAL_ID:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "originalEvent"

    :goto_12
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->ORIGINAL_SYNC_ID:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_13
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->CUSTOM_APP_PACKAGE:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_15

    :goto_14
    sput-object v1, Lcom/vivo/vcalendar/CalendarContract$EventsColumns;->CUSTOM_APP_URI:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "eventColor"

    goto/16 :goto_0

    :cond_2
    const-string v0, "eventColor_index"

    goto/16 :goto_1

    :cond_3
    const-string v0, "displayColor"

    goto/16 :goto_2

    :cond_4
    const-string v0, "sync_data1"

    goto/16 :goto_3

    :cond_5
    const-string v0, "sync_data2"

    goto/16 :goto_4

    :cond_6
    const-string v0, "sync_data3"

    goto/16 :goto_5

    :cond_7
    const-string v0, "sync_data4"

    goto/16 :goto_6

    :cond_8
    const-string v0, "sync_data5"

    goto/16 :goto_7

    :cond_9
    const-string v0, "sync_data6"

    goto :goto_8

    :cond_a
    const-string v0, "sync_data7"

    goto :goto_9

    :cond_b
    const-string v0, "sync_data8"

    goto :goto_a

    :cond_c
    const-string v0, "sync_data9"

    goto :goto_b

    :cond_d
    const-string v0, "sync_data10"

    goto :goto_c

    :cond_e
    const-string v0, "lastSynced"

    goto :goto_d

    :cond_f
    const-string v0, "eventEndTimezone"

    goto :goto_e

    :cond_10
    const-string v0, "accessLevel"

    goto :goto_f

    :cond_11
    const-string v0, "availability"

    goto :goto_10

    :cond_12
    const-string v0, "original_id"

    goto :goto_11

    :cond_13
    const-string v0, "original_sync_id"

    goto :goto_12

    :cond_14
    const-string v0, "customAppPackage"

    goto :goto_13

    :cond_15
    const-string v1, "customAppUri"

    goto :goto_14
.end method
