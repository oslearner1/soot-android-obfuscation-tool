.class public final Lcom/vivo/vcalendar/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

.field private d:Lcom/vivo/vcalendar/h;

.field private e:Lcom/vivo/vcalendar/e;

.field private f:Landroid/net/Uri;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:I

.field private k:J

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 1

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/vivo/vcalendar/k;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 1

    const-string v0, "PC Sync"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vivo/vcalendar/k;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcalendar/k;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/k;->j:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/vcalendar/k;->k:J

    iput-object p1, p0, Lcom/vivo/vcalendar/k;->f:Landroid/net/Uri;

    iput-object p2, p0, Lcom/vivo/vcalendar/k;->g:Ljava/lang/String;

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/vivo/vcalendar/k;->f:Landroid/net/Uri;

    iget-object v2, p0, Lcom/vivo/vcalendar/k;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vivo/vcalendar/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/vivo/vcalendar/k;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/vivo/vcalendar/VCalStatusChangeOperator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcalendar/k;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/k;->j:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/vcalendar/k;->k:J

    iput-object p3, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iput-object p2, p0, Lcom/vivo/vcalendar/k;->b:Landroid/content/Context;

    const-string v0, "PC Sync"

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/vcalendar/k;->l:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/vivo/vcalendar/e;

    iget-object v3, p0, Lcom/vivo/vcalendar/k;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/vcalendar/k;->b:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v4}, Lcom/vivo/vcalendar/e;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->e:Lcom/vivo/vcalendar/e;

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->e:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/e;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "VCalParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initTools: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " calendars exist in the given account."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vivo/vcalendar/k;->k:J

    :goto_1
    iget-wide v3, p0, Lcom/vivo/vcalendar/k;->k:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    invoke-interface {v0, v1, v1, v2}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "VCalParser"

    const-string v3, "initTools: the given calendar account does not exsit."

    invoke-static {v0, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "VCalParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initTools: accountName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/vcalendar/k;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/vivo/vcalendar/h;

    iget-object v3, p0, Lcom/vivo/vcalendar/k;->f:Landroid/net/Uri;

    iget-object v4, p0, Lcom/vivo/vcalendar/k;->b:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/vivo/vcalendar/h;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VCalParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initTools: the given Uri cannot be parsed, Uri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/vcalendar/k;->f:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "VCalParser"

    const-string v3, "initTools: IOException Occured when I/O operation. "

    invoke-static {v2, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final cancelCurrentParse()V
    .locals 3

    const-string v0, "VCalParser"

    const-string v1, "cancelCurrentParse"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcalendar/k;->h:Z

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v1, p0, Lcom/vivo/vcalendar/k;->i:I

    iget v2, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-interface {v0, v1, v2}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationCanceled(II)V

    return-void
.end method

.method public final close()V
    .locals 2

    const-string v0, "VCalParser"

    const-string v1, "close."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->close()V

    :cond_0
    return-void
.end method

.method public final startParse()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    const-string v0, "VCalParser"

    const-string v1, "startParse: started."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput-boolean v2, p0, Lcom/vivo/vcalendar/k;->h:Z

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return-void

    :cond_0
    const-string v0, "VCalParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startParse,fileIndex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->f:Landroid/net/Uri;

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vivo/vcalendar/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VCalParser"

    const-string v1, "startParse: initTools failed."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->getVEventsCount()I

    move-result v0

    iput v0, p0, Lcom/vivo/vcalendar/k;->j:I

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v4, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-interface {v0, v4}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationStarted(I)V

    const-string v0, "VCalParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startParse: Events total count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/vcalendar/k;->j:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    const/4 v4, 0x2

    invoke-interface {v0, v2, v9, v4}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    :cond_2
    iput v2, p0, Lcom/vivo/vcalendar/k;->i:I

    :goto_2
    iget-boolean v0, p0, Lcom/vivo/vcalendar/k;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->hasNextVEvent()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->close()V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/vivo/vcalendar/k;->h:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->e:Lcom/vivo/vcalendar/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Lcom/vivo/vcalendar/e;->addNextContentValue(Lcom/vivo/vcalendar/f;Z)V

    sget-object v0, Lcom/vivo/vcalendar/component/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->getNextVEventString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->buildEvent(Ljava/lang/String;)Lcom/vivo/vcalendar/component/e;
    :try_end_0
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v4, Lcom/vivo/vcalendar/f;

    invoke-direct {v4}, Lcom/vivo/vcalendar/f;-><init>()V

    invoke-virtual {v4}, Lcom/vivo/vcalendar/f;->getEventValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "calendar_id"

    iget-wide v7, p0, Lcom/vivo/vcalendar/k;->k:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v4}, Lcom/vivo/vcalendar/f;->getEventValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/vivo/vcalendar/component/e;->toEventsContentValue(Landroid/content/ContentValues;)V

    invoke-virtual {v4}, Lcom/vivo/vcalendar/f;->getAlarmsList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/vivo/vcalendar/component/e;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    invoke-virtual {v4}, Lcom/vivo/vcalendar/f;->getAttendeesList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/vivo/vcalendar/component/e;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    new-instance v5, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/e;->getDtStart()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V
    :try_end_1
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->hasNextVEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->e:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0, v4, v2}, Lcom/vivo/vcalendar/e;->addNextContentValue(Lcom/vivo/vcalendar/f;Z)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v4, p0, Lcom/vivo/vcalendar/k;->i:I

    iget v5, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-interface {v0, v4, v5}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalProcessStatusUpdate(II)V

    :goto_3
    iget v0, p0, Lcom/vivo/vcalendar/k;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/vcalendar/k;->i:I

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v4, "VCalParser"

    const-string v5, "startAccountCompose: BuileEvent failed"

    invoke-static {v4, v5}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v5, p0, Lcom/vivo/vcalendar/k;->i:I

    iget v6, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-interface {v4, v5, v6, v2}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v4, "VCalParser"

    const-string v5, "startParse: VEvent to contentvalues failed"

    invoke-static {v4, v5}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v5, p0, Lcom/vivo/vcalendar/k;->i:I

    iget v6, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-interface {v4, v5, v6, v2}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/vivo/vcalendar/k;->e:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0, v4, v10}, Lcom/vivo/vcalendar/e;->addNextContentValue(Lcom/vivo/vcalendar/f;Z)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v4, p0, Lcom/vivo/vcalendar/k;->i:I

    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-interface {v0, v4, v6, v5}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationFinished(IILjava/lang/Object;)V

    sget-object v0, Lcom/vivo/vcalendar/component/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method public final startParsePreview()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const-string v0, "VCalParser"

    const-string v1, "startParsePreview: started"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/vivo/vcalendar/h;

    iget-object v1, p0, Lcom/vivo/vcalendar/k;->f:Landroid/net/Uri;

    iget-object v2, p0, Lcom/vivo/vcalendar/k;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/vivo/vcalendar/h;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/h;->getFirstEventStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VCalParser"

    const-string v2, "startParsePreview: it is not a vcs file."

    invoke-static {v0, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    invoke-interface {v0, v6, v7, v6}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->buildEvent(Ljava/lang/String;)Lcom/vivo/vcalendar/component/e;
    :try_end_1
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    invoke-interface {v0, v6, v7, v6}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    const-string v0, "VCalParser"

    const-string v1, "startParse: buildEvents failed, vEvent = null"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VCalParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startParsePreview: the given Uri cannot be parsed, Uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/vcalendar/k;->f:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "VCalParser"

    const-string v2, "startParsePreview: IOException Occured when I/O operation. "

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "VCalParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startParsePreview : build calendar failed : \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/vivo/vcalendar/l;

    invoke-direct {v1}, Lcom/vivo/vcalendar/l;-><init>()V

    iget-object v2, p0, Lcom/vivo/vcalendar/k;->d:Lcom/vivo/vcalendar/h;

    invoke-virtual {v2}, Lcom/vivo/vcalendar/h;->getVEventsCount()I

    move-result v2

    iput v2, p0, Lcom/vivo/vcalendar/k;->j:I

    iget v2, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/l;->a(Lcom/vivo/vcalendar/l;I)V

    invoke-static {v1}, Lcom/vivo/vcalendar/l;->a(Lcom/vivo/vcalendar/l;)I

    move-result v2

    if-gtz v2, :cond_3

    const-string v0, "VCalParser"

    const-string v1, "startParsePreview: No VEvent exsits in the file."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    const/4 v1, 0x2

    invoke-interface {v0, v6, v7, v1}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/e;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/l;->a(Lcom/vivo/vcalendar/l;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/e;->getOrganizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/l;->b(Lcom/vivo/vcalendar/l;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/e;->getDtStart()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/vivo/vcalendar/l;->a(Lcom/vivo/vcalendar/l;J)V

    iget-object v2, p0, Lcom/vivo/vcalendar/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/vivo/vcalendar/component/e;->getTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/vcalendar/l;->c(Lcom/vivo/vcalendar/l;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    iget v2, p0, Lcom/vivo/vcalendar/k;->j:I

    iget v3, p0, Lcom/vivo/vcalendar/k;->j:I

    invoke-interface {v0, v2, v3, v1}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationFinished(IILjava/lang/Object;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string v2, "VCalParser"

    const-string v3, "startParsePreview: vEvent.getTime failed."

    invoke-static {v2, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    goto :goto_2
.end method

.method public final startParseVcsContent()V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "VCalParser"

    const-string v1, "startParseVcsContent"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->l:Ljava/lang/String;

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->l:Ljava/lang/String;

    const-string v1, "END:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "VCalParser"

    const-string v1, "startParseVcsContent: the given Content do not contains a VEvent."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VCalParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The failed string : \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/vcalendar/k;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vivo/vcalendar/k;->l:Ljava/lang/String;

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/vcalendar/k;->l:Ljava/lang/String;

    const-string v3, "END:VEVENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iget-object v3, p0, Lcom/vivo/vcalendar/k;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcalendar/k;->l:Ljava/lang/String;

    const-string v3, "VERSION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "VERSION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/vcalendar/component/c;->b:Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->buildEvent(Ljava/lang/String;)Lcom/vivo/vcalendar/component/e;
    :try_end_0
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    const-string v0, "VCalParser"

    const-string v1, "startParse: buildEvents failed, vEvent = null"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VCalParser"

    const-string v3, "startAccountCompose: BuileEvent failed"

    invoke-static {v1, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/vivo/vcalendar/e;

    iget-object v3, p0, Lcom/vivo/vcalendar/k;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/vcalendar/k;->b:Landroid/content/Context;

    invoke-direct {v0, v3, v7, v4}, Lcom/vivo/vcalendar/e;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/vcalendar/k;->e:Lcom/vivo/vcalendar/e;

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->e:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/e;->getCalendarIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "VCalParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startParseVcsContent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " calendars exist in the given account."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vivo/vcalendar/k;->k:J

    :goto_2
    iget-wide v3, p0, Lcom/vivo/vcalendar/k;->k:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    invoke-interface {v0, v7, v7, v8}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationExceptionOccured(III)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "VCalParser"

    const-string v3, "startParseVcsContent: the given calendar account does not exsit."

    invoke-static {v0, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/vivo/vcalendar/f;

    invoke-direct {v3}, Lcom/vivo/vcalendar/f;-><init>()V

    invoke-virtual {v3}, Lcom/vivo/vcalendar/f;->getEventValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v4, "calendar_id"

    iget-wide v5, p0, Lcom/vivo/vcalendar/k;->k:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Lcom/vivo/vcalendar/f;->getEventValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vivo/vcalendar/component/e;->toEventsContentValue(Landroid/content/ContentValues;)V

    invoke-virtual {v3}, Lcom/vivo/vcalendar/f;->getAlarmsList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vivo/vcalendar/component/e;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    invoke-virtual {v3}, Lcom/vivo/vcalendar/f;->getAttendeesList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vivo/vcalendar/component/e;->toAttendeesContentValue(Ljava/util/LinkedList;)V
    :try_end_1
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/vivo/vcalendar/k;->e:Lcom/vivo/vcalendar/e;

    invoke-virtual {v0, v3, v8}, Lcom/vivo/vcalendar/e;->addNextContentValue(Lcom/vivo/vcalendar/f;Z)V

    iget-object v0, p0, Lcom/vivo/vcalendar/k;->c:Lcom/vivo/vcalendar/VCalStatusChangeOperator;

    invoke-interface {v0, v8, v8, v2}, Lcom/vivo/vcalendar/VCalStatusChangeOperator;->vCalOperationFinished(IILjava/lang/Object;)V

    sget-object v0, Lcom/vivo/vcalendar/component/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "VCalParser"

    const-string v4, "startParse: VEvent to contentvalues failed"

    invoke-static {v1, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    goto :goto_3
.end method
