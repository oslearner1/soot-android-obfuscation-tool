.class public final Lcom/vivo/vcalendar/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;
.implements Lcom/vivo/vcalendar/CalendarContract$EventsColumns;
.implements Lcom/vivo/vcalendar/CalendarContract$SyncColumns;


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/vcalendar/CalendarContract;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/vcalendar/CalendarContract;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/vivo/vcalendar/c;->ACCOUNT_NAME:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/vcalendar/c;->ACCOUNT_TYPE:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vivo/vcalendar/c;->CAL_SYNC1:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vivo/vcalendar/c;->CAL_SYNC2:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vivo/vcalendar/c;->CAL_SYNC3:Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vivo/vcalendar/c;->CAL_SYNC4:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vivo/vcalendar/c;->CAL_SYNC5:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vivo/vcalendar/c;->CAL_SYNC6:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vivo/vcalendar/c;->CAL_SYNC7:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vivo/vcalendar/c;->CAL_SYNC8:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vivo/vcalendar/c;->CAL_SYNC9:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vivo/vcalendar/c;->CAL_SYNC10:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vivo/vcalendar/c;->ALLOWED_REMINDERS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vivo/vcalendar/c;->ALLOWED_ATTENDEE_TYPES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vivo/vcalendar/c;->ALLOWED_AVAILABILITY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vivo/vcalendar/c;->CALENDAR_ACCESS_LEVEL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vivo/vcalendar/c;->CALENDAR_COLOR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vivo/vcalendar/c;->CALENDAR_TIME_ZONE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vivo/vcalendar/c;->CAN_MODIFY_TIME_ZONE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vivo/vcalendar/c;->CAN_ORGANIZER_RESPOND:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/vivo/vcalendar/c;->CALENDAR_DISPLAY_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/vivo/vcalendar/c;->CAN_PARTIALLY_UPDATE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/vivo/vcalendar/c;->VISIBLE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/vcalendar/c;->DIRTY:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vivo/vcalendar/c;->SYNC_DATA1:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vivo/vcalendar/c;->SYNC_DATA2:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vivo/vcalendar/c;->SYNC_DATA3:Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vivo/vcalendar/c;->SYNC_DATA4:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vivo/vcalendar/c;->SYNC_DATA5:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vivo/vcalendar/c;->SYNC_DATA6:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vivo/vcalendar/c;->SYNC_DATA7:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vivo/vcalendar/c;->SYNC_DATA8:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vivo/vcalendar/c;->SYNC_DATA9:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vivo/vcalendar/c;->SYNC_DATA10:Ljava/lang/String;

    aput-object v2, v0, v1

    return-void
.end method
