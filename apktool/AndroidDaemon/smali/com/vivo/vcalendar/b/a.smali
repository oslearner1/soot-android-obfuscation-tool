.class public Lcom/vivo/vcalendar/b/a;
.super Lcom/vivo/vcalendar/b/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "PRODID"

    const-string v1, "-//vivo//vivo assistant//EN"

    invoke-direct {p0, v0, v1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AALARM"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AAlarm"

    const-string v1, "Constructor: AAlarm property created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toAlarmsContentValue(Ljava/util/LinkedList;J)V
    .locals 6

    const-string v0, "AAlarm"

    const-string v1, "toAlarmsContentValue: started."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "AAlarm"

    const-string v1, "toAlarmsContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/vivo/vcalendar/b/a;->b:Ljava/lang/String;

    const-string v2, "UTC"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-string v3, "minutes"

    const-wide/16 v4, -0x1

    mul-long/2addr v1, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
