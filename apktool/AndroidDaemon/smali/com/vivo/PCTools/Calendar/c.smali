.class public final Lcom/vivo/PCTools/Calendar/c;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Landroid/content/ContentValues;

.field private e:Landroid/content/ContentValues;

.field private f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

.field private g:Landroid/text/format/Time;

.field private h:Landroid/text/format/Time;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/text/SimpleDateFormat;

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->l:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->k:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->l:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->l:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    new-instance v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;

    invoke-direct {v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/vivo/PCTools/Calendar/c;->i:I

    return-void
.end method

.method private a(I)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    invoke-virtual {v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->clear()V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->j:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eq p1, v6, :cond_0

    if-ne p1, v4, :cond_4

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v5, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    new-array v2, v6, [I

    new-array v3, v6, [I

    const/high16 v0, 0x10000

    aput v0, v2, v1

    const/high16 v0, 0x20000

    aput v0, v2, v4

    const/4 v0, 0x2

    const/high16 v4, 0x40000

    aput v4, v2, v0

    const/4 v0, 0x3

    const/high16 v4, 0x80000

    aput v4, v2, v0

    const/4 v0, 0x4

    const/high16 v4, 0x100000

    aput v4, v2, v0

    const/high16 v0, 0x200000

    aput v0, v2, v5

    const/high16 v0, 0x400000

    aput v0, v2, v7

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_3

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v2, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v3, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v6, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iget v1, p0, Lcom/vivo/PCTools/Calendar/c;->i:I

    invoke-static {v1}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->calendarDay2Day(I)I

    move-result v1

    iput v1, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->e:I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    invoke-virtual {v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->j:Ljava/lang/String;

    goto :goto_0

    :cond_3
    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v5, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    new-array v2, v5, [I

    new-array v3, v5, [I

    const/high16 v0, 0x20000

    aput v0, v2, v1

    const/high16 v0, 0x40000

    aput v0, v2, v4

    const/4 v0, 0x2

    const/high16 v4, 0x80000

    aput v4, v2, v0

    const/4 v0, 0x3

    const/high16 v4, 0x100000

    aput v4, v2, v0

    const/4 v0, 0x4

    const/high16 v4, 0x200000

    aput v4, v2, v0

    move v0, v1

    :goto_3
    if-lt v0, v5, :cond_5

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v2, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v3, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v5, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    goto :goto_2

    :cond_5
    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v5, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    new-array v0, v4, [I

    new-array v2, v4, [I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    aput v3, v0, v1

    aput v1, v2, v1

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v0, v1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v2, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v4, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    goto :goto_2

    :cond_7
    if-ne p1, v5, :cond_8

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v7, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v1, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v4, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    new-array v0, v4, [I

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    aput v2, v0, v1

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v0, v1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->o:[I

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v7, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v4, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v1, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    new-array v2, v4, [I

    new-array v3, v4, [I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_9

    const/4 v0, -0x1

    :cond_9
    aput v0, v3, v1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    invoke-static {v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->timeDay2Day(I)I

    move-result v0

    aput v0, v2, v1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v2, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput-object v3, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    goto/16 :goto_2

    :cond_a
    if-ne p1, v7, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->f:Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iput v6, v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    goto/16 :goto_2
.end method


# virtual methods
.method public final characters([CII)V
    .locals 0

    return-void
.end method

.method public final endDocument()V
    .locals 0

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "event"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v1, "eventTimezone"

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v1, "modify_select"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v1, "dtend"

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v1, "lastDate"

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v0, "CalendarXmlParseHandle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save parse meventValues ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "reminder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getEvents()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getReminders()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public final startDocument()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->c:Ljava/util/List;

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9

    const-string v0, "event"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->b:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CalendarXmlParseHandle"

    const-string v4, "save Events._ID"

    invoke-static {v1, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vivo/PCTools/Calendar/c;->m:J

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "_id"

    iget-wide v5, p0, Lcom/vivo/PCTools/Calendar/c;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "CalendarXmlParseHandle"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " Events._ID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/vivo/PCTools/Calendar/c;->m:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "calendar_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "calendar_id"

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    const-string v1, "title"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "eventLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "eventLocation"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "description"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "description"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v1, "allDay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_11

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/vivo/PCTools/Calendar/c;->n:Z

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "allDay"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    const-string v1, "hasAlarm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "hasAlarm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    const-string v1, "dtstart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    :try_start_0
    iget-boolean v1, p0, Lcom/vivo/PCTools/Calendar/c;->n:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->l:Ljava/text/SimpleDateFormat;

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_9
    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->l:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/32 v7, 0x4f016560

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_12

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x55f00

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-boolean v1, p0, Lcom/vivo/PCTools/Calendar/c;->n:Z

    if-eqz v1, :cond_13

    const-string v1, "UTC"

    iput-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    const-string v6, "UTC"

    iput-object v6, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    const/4 v4, 0x0

    iput v4, v1, Landroid/text/format/Time;->hour:I

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    const/4 v4, 0x0

    iput v4, v1, Landroid/text/format/Time;->minute:I

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    const/4 v4, 0x0

    iput v4, v1, Landroid/text/format/Time;->second:I

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    :goto_4
    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "dtstart"

    iget-object v5, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a
    const-string v1, "dtend"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "dtend"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_b
    :goto_5
    const-string v1, "originalEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    sget-object v5, Lcom/vivo/vcalendar/c;->ORIGINAL_ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c
    const-string v1, "eventStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v5, "eventStatus"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    const-string v1, "rrule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/vivo/PCTools/Calendar/c;->a(I)V

    iget-object v4, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->j:Ljava/lang/String;

    if-nez v1, :cond_17

    const-string v1, "rrule"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "duration"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "lastDate"

    iget-object v5, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_e
    :goto_6
    const-string v1, "modify_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "modify_select"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    const-string v1, "originalInstanceTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    :try_start_1
    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->l:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_7
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v6, "originalInstanceTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_10
    const-string v1, "Attr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_12
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const-string v5, "CalendarXmlParseHandle"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u89e3\u6790\u65f6\u95f4\u51fa\u9519\u4e86"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    :cond_13
    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_4

    :cond_14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    :try_start_3
    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->l:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/32 v7, 0x4f016560

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_15

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x55f00

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_8
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_9
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-boolean v1, p0, Lcom/vivo/PCTools/Calendar/c;->n:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    const-string v6, "UTC"

    iput-object v6, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    const/4 v4, 0x0

    iput v4, v1, Landroid/text/format/Time;->hour:I

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    const/4 v4, 0x0

    iput v4, v1, Landroid/text/format/Time;->minute:I

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    const/4 v4, 0x0

    iput v4, v1, Landroid/text/format/Time;->second:I

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/text/format/Time;->monthDay:I

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    :goto_a
    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->d:Landroid/content/ContentValues;

    const-string v4, "dtend"

    iget-object v5, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5

    :cond_15
    :try_start_4
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v1

    const-string v5, "CalendarXmlParseHandle"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u89e3\u6790\u65f6\u95f4\u51fa\u9519\u4e86"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_9

    :cond_16
    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    goto :goto_a

    :cond_17
    const-string v1, "dtend"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "lastDate"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "rrule"

    iget-object v5, p0, Lcom/vivo/PCTools/Calendar/c;->j:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->h:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/c;->g:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iget-boolean v1, p0, Lcom/vivo/PCTools/Calendar/c;->n:Z

    if-eqz v1, :cond_18

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "P"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "D"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b
    const-string v5, "duration"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_18
    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "P"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :catch_2
    move-exception v1

    const-string v5, "CalendarXmlParseHandle"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u89e3\u6790originalInstanceTime\u65f6\u95f4\u51fa\u9519\u4e86"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_7

    :cond_19
    const-string v0, "reminder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    const/4 v0, 0x0

    :goto_c
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_1a

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    const-string v1, "event_id"

    iget-wide v2, p0, Lcom/vivo/PCTools/Calendar/c;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    :cond_1a
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1b
    const-string v3, "minutes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    const-string v4, "minutes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v3, Lcom/vivo/vcalendar/CalendarContract;->b:Z

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/c;->e:Landroid/content/ContentValues;

    const-string v4, "originateMinutes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1c
    const-string v3, "Attr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method
