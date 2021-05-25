.class public interface abstract Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;
.super Ljava/lang/Object;


# static fields
.field public static final CAL_SYNC1:Ljava/lang/String;

.field public static final CAL_SYNC10:Ljava/lang/String;

.field public static final CAL_SYNC2:Ljava/lang/String;

.field public static final CAL_SYNC3:Ljava/lang/String;

.field public static final CAL_SYNC4:Ljava/lang/String;

.field public static final CAL_SYNC5:Ljava/lang/String;

.field public static final CAL_SYNC6:Ljava/lang/String;

.field public static final CAL_SYNC7:Ljava/lang/String;

.field public static final CAL_SYNC8:Ljava/lang/String;

.field public static final CAL_SYNC9:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "_sync_version"

    :goto_0
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC1:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC2:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC3:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC4:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC5:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC6:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC7:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC8:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC9:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_9

    :goto_9
    sput-object v1, Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;->CAL_SYNC10:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "cal_sync1"

    goto :goto_0

    :cond_1
    const-string v0, "cal_sync2"

    goto :goto_1

    :cond_2
    const-string v0, "cal_sync3"

    goto :goto_2

    :cond_3
    const-string v0, "cal_sync4"

    goto :goto_3

    :cond_4
    const-string v0, "cal_sync5"

    goto :goto_4

    :cond_5
    const-string v0, "cal_sync6"

    goto :goto_5

    :cond_6
    const-string v0, "cal_sync7"

    goto :goto_6

    :cond_7
    const-string v0, "cal_sync8"

    goto :goto_7

    :cond_8
    const-string v0, "cal_sync9"

    goto :goto_8

    :cond_9
    const-string v1, "cal_sync10"

    goto :goto_9
.end method
