.class public final Lcom/vivo/vcalendar/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

.field private c:Ljava/io/File;

.field private d:J

.field private e:Lcom/vivo/vcalendar/h;

.field private f:Lcom/vivo/vcalendar/e;

.field private g:Ljava/util/ArrayList;

.field private h:Z

.field private i:I

.field private j:I

.field private final k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/vcalendar/i;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcalendar/i;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/i;->j:I

    const-string v0, "vCalendar"

    iput-object v0, p0, Lcom/vivo/vcalendar/i;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcalendar/i;->b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/vcalendar/i;->k:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/accounts/Account;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 1

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/vivo/vcalendar/i;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;JLcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/vcalendar/i;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcalendar/i;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/i;->j:I

    const-string v0, "vCalendar"

    iput-object v0, p0, Lcom/vivo/vcalendar/i;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/vcalendar/i;->c:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcalendar/i;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/vivo/vcalendar/i;->b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iput-wide p3, p0, Lcom/vivo/vcalendar/i;->d:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/vcalendar/i;->k:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 1

    const-string v0, "PC Sync"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vivo/vcalendar/i;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/vcalendar/i;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcalendar/i;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/i;->j:I

    const-string v0, "vCalendar"

    iput-object v0, p0, Lcom/vivo/vcalendar/i;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/vivo/vcalendar/i;->b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/vcalendar/i;->k:I

    iput-object p1, p0, Lcom/vivo/vcalendar/i;->c:Ljava/io/File;

    iput-object p3, p0, Lcom/vivo/vcalendar/i;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/vcalendar/i;->d:J

    iput-boolean v2, p0, Lcom/vivo/vcalendar/i;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/i;->j:I

    const-string v0, "vCalendar"

    iput-object v0, p0, Lcom/vivo/vcalendar/i;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/vcalendar/i;->c:Ljava/io/File;

    iput-object p2, p0, Lcom/vivo/vcalendar/i;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/vivo/vcalendar/i;->b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iput v2, p0, Lcom/vivo/vcalendar/i;->k:I

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/vivo/vcalendar/i;->k:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/vivo/vcalendar/i;->n:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/vivo/vcalendar/e;

    iget-object v2, p0, Lcom/vivo/vcalendar/i;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3}, Lcom/vivo/vcalendar/e;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    iget-object v1, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/e;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/vcalendar/i;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/vivo/vcalendar/h;

    iget-object v2, p0, Lcom/vivo/vcalendar/i;->c:Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/vivo/vcalendar/h;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/vcalendar/e;

    iget-object v2, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/vivo/vcalendar/e;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/vivo/vcalendar/i;->c:Ljava/io/File;

    if-nez v1, :cond_2

    const-string v0, "VCalComposer"

    const-string v1, "The destination file can not be null"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    new-instance v1, Lcom/vivo/vcalendar/e;

    iget-object v2, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/vcalendar/i;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vivo/vcalendar/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    iget-object v1, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/e;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/vcalendar/i;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/vivo/vcalendar/h;

    iget-object v2, p0, Lcom/vivo/vcalendar/i;->c:Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/vivo/vcalendar/h;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/vivo/vcalendar/i;->k:I

    if-eq v2, v1, :cond_1

    const-string v1, "VCalComposer"

    const-string v2, "startEventCompose() can be called only in SINGLE_EVENT_MODE"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/vivo/vcalendar/i;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v1, "VCalComposer"

    const-string v2, "The EventId should be set firstly"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/vivo/vcalendar/i;->a()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "VCalComposer"

    const-string v2, "initTools failed"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    iget-wide v3, p0, Lcom/vivo/vcalendar/i;->d:J

    invoke-virtual {v2, v3, v4}, Lcom/vivo/vcalendar/e;->isGivenIdEventExisted(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final buildVEventString(J)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iput-wide p1, p0, Lcom/vivo/vcalendar/i;->d:J

    invoke-direct {p0}, Lcom/vivo/vcalendar/i;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/e;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/vcalendar/i;->g:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lcom/vivo/vcalendar/i;->j:I

    iget-object v1, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/e;->getNextVEventInfo()Lcom/vivo/vcalendar/g;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->buildEvent(Lcom/vivo/vcalendar/g;)Lcom/vivo/vcalendar/component/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/vcalendar/component/a;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VCalComposer"

    const-string v3, "startAccountCompose: BuileEvent failed"

    invoke-static {v2, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public final cancelCurrentCompose()V
    .locals 3

    const-string v0, "VCalComposer"

    const-string v1, "///////cancelCurrentParse"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcalendar/i;->h:Z

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v1, p0, Lcom/vivo/vcalendar/i;->i:I

    iget v2, p0, Lcom/vivo/vcalendar/i;->j:I

    invoke-interface {v0, v1, v2}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationCanceled(II)V

    return-void
.end method

.method public final getMemoryFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getVCalEnd()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/vivo/vcalendar/component/c;->getVCalendarTrail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVCalHead()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/vivo/vcalendar/component/c;->getVCalendarHead()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final startAccountsCompose()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/vivo/vcalendar/i;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/vcalendar/i;->k:I

    if-eqz v0, :cond_1

    const-string v0, "VCalComposer"

    const-string v1, "startAccountsCompose() cannot be called only in SINGLE_EVENT_MODE"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/vivo/vcalendar/i;->h:Z

    const-string v0, "VCalComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startAccountsCompose:: accountCnt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/vcalendar/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/vcalendar/i;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/vcalendar/i;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VCalComposer"

    const-string v1, "initTools failed"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/vivo/vcalendar/i;->i:I

    iget v0, p0, Lcom/vivo/vcalendar/i;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/e;->getVEventCount()I

    move-result v0

    iput v0, p0, Lcom/vivo/vcalendar/i;->j:I

    :cond_3
    iget v0, p0, Lcom/vivo/vcalendar/i;->j:I

    if-lez v0, :cond_0

    :goto_1
    iget-boolean v0, p0, Lcom/vivo/vcalendar/i;->h:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/e;->hasNextVEvent()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/vivo/vcalendar/i;->b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v1, p0, Lcom/vivo/vcalendar/i;->i:I

    iget v2, p0, Lcom/vivo/vcalendar/i;->j:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationFinished(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->close()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    iget v1, p0, Lcom/vivo/vcalendar/i;->j:I

    invoke-virtual {v0, v1}, Lcom/vivo/vcalendar/h;->setVEventsCount(I)V

    const-string v0, "VCalComposer"

    const-string v1, "startAccountsCompose:: Compose while doing!"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/e;->getNextVEventInfo()Lcom/vivo/vcalendar/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/vcalendar/g;->getCalendarId()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    cmp-long v1, v4, v4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/h;->b()V

    :cond_6
    iget-object v1, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/h;->a()V

    :cond_7
    :try_start_0
    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->buildEvent(Lcom/vivo/vcalendar/g;)Lcom/vivo/vcalendar/component/e;
    :try_end_0
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/e;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    invoke-virtual {v1, v0, v3}, Lcom/vivo/vcalendar/h;->addNextVEventString(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/vivo/vcalendar/i;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/vcalendar/i;->i:I

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v1, p0, Lcom/vivo/vcalendar/i;->i:I

    iget v2, p0, Lcom/vivo/vcalendar/i;->j:I

    invoke-interface {v0, v1, v2}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalProcessStatusUpdate(II)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "VCalComposer"

    const-string v2, "startAccountCompose: BuileEvent failed"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public final startEventCompose(J)V
    .locals 4

    const/4 v3, 0x1

    iput-wide p1, p0, Lcom/vivo/vcalendar/i;->d:J

    invoke-direct {p0}, Lcom/vivo/vcalendar/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/e;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcalendar/i;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_1

    const-string v0, "VCalComposer"

    const-string v1, "startEventCompose : for single event compose, the calendar should only be a single one"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/vivo/vcalendar/i;->j:I

    new-instance v0, Lcom/vivo/vcalendar/h;

    iget-object v1, p0, Lcom/vivo/vcalendar/i;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/vivo/vcalendar/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/vivo/vcalendar/h;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    iget v1, p0, Lcom/vivo/vcalendar/i;->j:I

    invoke-virtual {v0, v1}, Lcom/vivo/vcalendar/h;->setVEventsCount(I)V

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->f:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/e;->getNextVEventInfo()Lcom/vivo/vcalendar/g;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->buildEvent(Lcom/vivo/vcalendar/g;)Lcom/vivo/vcalendar/component/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/h;->a()V

    iget-object v1, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vivo/vcalendar/h;->addNextVEventString(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->b:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v1, p0, Lcom/vivo/vcalendar/i;->j:I

    invoke-interface {v0, v3, v1}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalProcessStatusUpdate(II)V

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->b()V

    iget-object v0, p0, Lcom/vivo/vcalendar/i;->e:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VCalComposer"

    const-string v2, "startAccountCompose: BuileEvent failed"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    goto :goto_0
.end method
