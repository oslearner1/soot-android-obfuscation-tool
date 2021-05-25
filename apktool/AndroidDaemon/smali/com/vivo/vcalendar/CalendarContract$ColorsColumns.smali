.class public interface abstract Lcom/vivo/vcalendar/CalendarContract$ColorsColumns;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/SyncStateContract$Columns;


# static fields
.field public static final COLOR:Ljava/lang/String;

.field public static final COLOR_KEY:Ljava/lang/String;

.field public static final COLOR_TYPE:Ljava/lang/String;

.field public static final TYPE_CALENDAR:I = 0x0

.field public static final TYPE_EVENT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$ColorsColumns;->COLOR_TYPE:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/vivo/vcalendar/CalendarContract$ColorsColumns;->COLOR_KEY:Ljava/lang/String;

    sget-boolean v0, Lcom/vivo/vcalendar/CalendarContract;->a:Z

    if-eqz v0, :cond_2

    :goto_2
    sput-object v1, Lcom/vivo/vcalendar/CalendarContract$ColorsColumns;->COLOR:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "color_type"

    goto :goto_0

    :cond_1
    const-string v0, "color_index"

    goto :goto_1

    :cond_2
    const-string v1, "color"

    goto :goto_2
.end method
