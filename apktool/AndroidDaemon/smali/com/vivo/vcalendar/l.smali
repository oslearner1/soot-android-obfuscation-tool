.class public final Lcom/vivo/vcalendar/l;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/vcalendar/l;)I
    .locals 1

    iget v0, p0, Lcom/vivo/vcalendar/l;->a:I

    return v0
.end method

.method static synthetic a(Lcom/vivo/vcalendar/l;I)V
    .locals 0

    iput p1, p0, Lcom/vivo/vcalendar/l;->a:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/vcalendar/l;J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/vcalendar/l;->d:J

    return-void
.end method

.method static synthetic a(Lcom/vivo/vcalendar/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcalendar/l;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/vcalendar/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcalendar/l;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/vcalendar/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcalendar/l;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEventsCnt()I
    .locals 1

    iget v0, p0, Lcom/vivo/vcalendar/l;->a:I

    return v0
.end method

.method public final getFirstEventDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstEventOrganizer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstEventStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/vcalendar/l;->d:J

    return-wide v0
.end method

.method public final getFirstEventSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/l;->b:Ljava/lang/String;

    return-object v0
.end method
