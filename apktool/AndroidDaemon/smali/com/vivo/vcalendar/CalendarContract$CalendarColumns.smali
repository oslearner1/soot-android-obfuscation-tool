.class public interface abstract Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;
.super Ljava/lang/Object;


# static fields
.field public static final ALLOWED_ATTENDEE_TYPES:Ljava/lang/String;

.field public static final ALLOWED_AVAILABILITY:Ljava/lang/String;

.field public static final ALLOWED_REMINDERS:Ljava/lang/String;

.field public static final CALENDAR_ACCESS_LEVEL:Ljava/lang/String;

.field public static final CALENDAR_COLOR:Ljava/lang/String;

.field public static final CALENDAR_COLOR_KEY:Ljava/lang/String;

.field public static final CALENDAR_DISPLAY_NAME:Ljava/lang/String;

.field public static final CALENDAR_TIME_ZONE:Ljava/lang/String;

.field public static final CAL_ACCESS_CONTRIBUTOR:I = 0x1f4

.field public static final CAL_ACCESS_EDITOR:I = 0x258

.field public static final CAL_ACCESS_FREEBUSY:I = 0x64

.field public static final CAL_ACCESS_NONE:I = 0x0

.field public static final CAL_ACCESS_OVERRIDE:I = 0x190

.field public static final CAL_ACCESS_OWNER:I = 0x2bc

.field public static final CAL_ACCESS_READ:I = 0xc8

.field public static final CAL_ACCESS_RESPOND:I = 0x12c

.field public static final CAL_ACCESS_ROOT:I = 0x320

.field public static final CAN_MODIFY_TIME_ZONE:Ljava/lang/String;

.field public static final CAN_ORGANIZER_RESPOND:Ljava/lang/String;

.field public static final MAX_REMINDERS:Ljava/lang/String;

.field public static final OWNER_ACCOUNT:Ljava/lang/String; = "ownerAccount"

.field public static final SYNC_EVENTS:Ljava/lang/String; = "sync_events"

.field public static final VISIBLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "color"

    :goto_0
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->CALENDAR_COLOR:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->CALENDAR_COLOR_KEY:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "displayName"

    :goto_2
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->CALENDAR_DISPLAY_NAME:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "access_level"

    :goto_3
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->CALENDAR_ACCESS_LEVEL:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "selected"

    :goto_4
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->VISIBLE:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "timezone"

    :goto_5
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->CALENDAR_TIME_ZONE:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "organizerCanRespond"

    :goto_6
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->CAN_ORGANIZER_RESPOND:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->CAN_MODIFY_TIME_ZONE:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->MAX_REMINDERS:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_9
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->ALLOWED_REMINDERS:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_a
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->ALLOWED_AVAILABILITY:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_b

    :goto_b
    sput-object v1, Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;->ALLOWED_ATTENDEE_TYPES:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "calendar_color"

    goto :goto_0

    :cond_1
    const-string v0, "calendar_color_index"

    goto :goto_1

    :cond_2
    const-string v0, "calendar_displayName"

    goto :goto_2

    :cond_3
    const-string v0, "calendar_access_level"

    goto :goto_3

    :cond_4
    const-string v0, "visible"

    goto :goto_4

    :cond_5
    const-string v0, "calendar_timezone"

    goto :goto_5

    :cond_6
    const-string v0, "canOrganizerRespond"

    goto :goto_6

    :cond_7
    const-string v0, "canModifyTimeZone"

    goto :goto_7

    :cond_8
    const-string v0, "maxReminders"

    goto :goto_8

    :cond_9
    const-string v0, "allowedReminders"

    goto :goto_9

    :cond_a
    const-string v0, "allowedAvailability"

    goto :goto_a

    :cond_b
    const-string v1, "allowedAttendeeTypes"

    goto :goto_b
.end method
