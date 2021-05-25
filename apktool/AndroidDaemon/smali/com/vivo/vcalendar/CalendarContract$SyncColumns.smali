.class public interface abstract Lcom/vivo/vcalendar/CalendarContract$SyncColumns;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcalendar/CalendarContract$CalendarSyncColumns;


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String;

.field public static final ACCOUNT_TYPE:Ljava/lang/String;

.field public static final CAN_PARTIALLY_UPDATE:Ljava/lang/String;

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DIRTY:Ljava/lang/String;

.field public static final _SYNC_ID:Ljava/lang/String; = "_sync_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "_sync_account"

    :goto_0
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$SyncColumns;->ACCOUNT_NAME:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "_sync_account_type"

    :goto_1
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$SyncColumns;->ACCOUNT_TYPE:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "_sync_dirty"

    :goto_2
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$SyncColumns;->DIRTY:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$SyncColumns;->CAN_PARTIALLY_UPDATE:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "account_name"

    goto :goto_0

    :cond_1
    const-string v0, "account_type"

    goto :goto_1

    :cond_2
    const-string v0, "dirty"

    goto :goto_2

    :cond_3
    const-string v0, "canPartiallyUpdate"

    goto :goto_3
.end method
