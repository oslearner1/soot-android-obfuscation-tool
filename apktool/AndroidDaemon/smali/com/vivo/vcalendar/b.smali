.class public final Lcom/vivo/vcalendar/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/vivo/vcalendar/CalendarContract$CalendarColumns;
.implements Lcom/vivo/vcalendar/CalendarContract$SyncColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/vcalendar/CalendarContract;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/calendars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/vcalendar/b;->a:Landroid/net/Uri;

    sget-object v0, Lcom/vivo/vcalendar/b;->CALENDAR_DISPLAY_NAME:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "location"

    :goto_0
    sput-object v0, Lcom/vivo/vcalendar/b;->b:Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/vivo/vcalendar/b;->ACCOUNT_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vivo/vcalendar/b;->ACCOUNT_TYPE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vivo/vcalendar/b;->DIRTY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vivo/vcalendar/b;->MAX_REMINDERS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vivo/vcalendar/b;->ALLOWED_REMINDERS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vivo/vcalendar/b;->CAN_MODIFY_TIME_ZONE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vivo/vcalendar/b;->CAN_ORGANIZER_RESPOND:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vivo/vcalendar/b;->CAN_PARTIALLY_UPDATE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vivo/vcalendar/b;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vivo/vcalendar/b;->CALENDAR_TIME_ZONE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vivo/vcalendar/b;->CALENDAR_ACCESS_LEVEL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC2:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC3:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC4:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC5:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC6:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC7:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC8:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC9:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/vivo/vcalendar/b;->CAL_SYNC10:Ljava/lang/String;

    aput-object v2, v0, v1

    return-void

    :cond_0
    const-string v0, "calendar_location"

    goto/16 :goto_0
.end method
