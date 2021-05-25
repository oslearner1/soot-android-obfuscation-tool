.class public final Lcom/vivo/vcalendar/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Landroid/database/Cursor;

.field private e:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/vcalendar/g;J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/vcalendar/g;->b:J

    return-void
.end method

.method static synthetic a(Lcom/vivo/vcalendar/g;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcalendar/g;->a:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic a(Lcom/vivo/vcalendar/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcalendar/g;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/vcalendar/g;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcalendar/g;->d:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic c(Lcom/vivo/vcalendar/g;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcalendar/g;->e:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final getAlertsCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/g;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/vivo/vcalendar/g;->d:Landroid/database/Cursor;

    return-object v0
.end method

.method public final getAttendeesCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/g;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/vivo/vcalendar/g;->e:Landroid/database/Cursor;

    return-object v0
.end method

.method public final getCalenarName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCalendarId()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/vcalendar/g;->b:J

    return-wide v0
.end method

.method public final getVEventCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/vivo/vcalendar/g;->a:Landroid/database/Cursor;

    return-object v0
.end method
