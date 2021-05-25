.class public final Lcom/vivo/PCTools/Calendar/EventRecurrence;
.super Ljava/lang/Object;


# static fields
.field private static A:Ljava/util/HashMap;

.field private static final B:Ljava/util/HashMap;

.field private static final C:Ljava/util/HashMap;

.field private static y:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:[I

.field public g:I

.field public h:[I

.field public i:I

.field public j:[I

.field public k:I

.field public l:[I

.field public m:[I

.field public n:I

.field public o:[I

.field public p:I

.field public q:[I

.field public r:I

.field public s:[I

.field public t:I

.field public u:[I

.field public v:I

.field public w:[I

.field public x:I

.field private z:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "EventRecurrence"

    sput-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->y:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "FREQ"

    new-instance v2, Lcom/vivo/PCTools/Calendar/p;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/p;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "UNTIL"

    new-instance v2, Lcom/vivo/PCTools/Calendar/r;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/r;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "COUNT"

    new-instance v2, Lcom/vivo/PCTools/Calendar/o;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/o;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "INTERVAL"

    new-instance v2, Lcom/vivo/PCTools/Calendar/q;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/q;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYSECOND"

    new-instance v2, Lcom/vivo/PCTools/Calendar/k;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/k;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYMINUTE"

    new-instance v2, Lcom/vivo/PCTools/Calendar/h;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/h;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYHOUR"

    new-instance v2, Lcom/vivo/PCTools/Calendar/g;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/g;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYDAY"

    new-instance v2, Lcom/vivo/PCTools/Calendar/f;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/f;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYMONTHDAY"

    new-instance v2, Lcom/vivo/PCTools/Calendar/j;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/j;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYYEARDAY"

    new-instance v2, Lcom/vivo/PCTools/Calendar/n;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/n;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYWEEKNO"

    new-instance v2, Lcom/vivo/PCTools/Calendar/m;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/m;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYMONTH"

    new-instance v2, Lcom/vivo/PCTools/Calendar/i;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/i;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "BYSETPOS"

    new-instance v2, Lcom/vivo/PCTools/Calendar/l;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/l;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    const-string v1, "WKST"

    new-instance v2, Lcom/vivo/PCTools/Calendar/s;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/Calendar/s;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->B:Ljava/util/HashMap;

    const-string v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->B:Ljava/util/HashMap;

    const-string v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->B:Ljava/util/HashMap;

    const-string v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->B:Ljava/util/HashMap;

    const-string v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->B:Ljava/util/HashMap;

    const-string v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->B:Ljava/util/HashMap;

    const-string v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->B:Ljava/util/HashMap;

    const-string v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->C:Ljava/util/HashMap;

    const-string v1, "SU"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->C:Ljava/util/HashMap;

    const-string v1, "MO"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->C:Ljava/util/HashMap;

    const-string v1, "TU"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->C:Ljava/util/HashMap;

    const-string v1, "WE"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->C:Ljava/util/HashMap;

    const-string v1, "TH"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->C:Ljava/util/HashMap;

    const-string v1, "FR"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->C:Ljava/util/HashMap;

    const-string v1, "SA"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad day argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v0, "SU"

    :goto_0
    return-object v0

    :sswitch_1
    const-string v0, "MO"

    goto :goto_0

    :sswitch_2
    const-string v0, "TU"

    goto :goto_0

    :sswitch_3
    const-string v0, "WE"

    goto :goto_0

    :sswitch_4
    const-string v0, "TH"

    goto :goto_0

    :sswitch_5
    const-string v0, "FR"

    goto :goto_0

    :sswitch_6
    const-string v0, "SA"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->B:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    aget v0, v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    aget v0, v0, p2

    invoke-static {v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 3

    if-lez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, -0x1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    aget v0, p3, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    aget v2, p3, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([II[II)Z
    .locals 4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-lt v1, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    aget v2, p0, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->C:Ljava/util/HashMap;

    return-object v0
.end method

.method public static calendarDay2Day(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad day of week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 v0, 0x10000

    :goto_0
    return v0

    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad day of week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad day of week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static timeDay2Day(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad day of week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 v0, 0x10000

    :goto_0
    return v0

    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    iput v1, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->u:[I

    iput v1, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->v:I

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->o:[I

    iput v1, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->z:Landroid/text/format/Time;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->z:Landroid/text/format/Time;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    iget v3, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->c:I

    iget v3, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->d:I

    iget v3, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->e:I

    iget v3, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->e:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->f:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->g:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->f:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->g:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->h:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->i:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->h:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->i:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->j:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->k:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->j:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->k:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->o:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->o:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->q:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->r:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->q:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->r:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->s:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->t:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->s:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->t:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->u:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->v:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->u:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->v:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->w:[I

    iget v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->x:I

    iget-object v4, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->w:[I

    iget v5, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->x:I

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a([II[II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->z:Landroid/text/format/Time;

    iget-object v3, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->z:Landroid/text/format/Time;

    invoke-static {v2, v3}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2
.end method

.method public final hashCode()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final parse(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->x:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->v:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->t:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->r:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->k:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->i:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->g:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->d:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->c:I

    iput v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    move v1, v3

    :goto_0
    if-lt v2, v5, :cond_1

    and-int/lit16 v0, v1, 0x2000

    if-nez v0, :cond_0

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->e:I

    :cond_0
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_6

    new-instance v0, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    const-string v1, "Must specify a FREQ value"

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v0, v4, v2

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_2

    new-instance v1, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing LHS in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    new-instance v1, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing RHS in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->A:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/Calendar/t;

    if-nez v0, :cond_4

    const-string v0, "X-"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find parser for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0, v6, p0}, Lcom/vivo/PCTools/Calendar/t;->parsePart(Ljava/lang/String;Lcom/vivo/PCTools/Calendar/EventRecurrence;)I

    move-result v0

    and-int v6, v1, v0

    if-eqz v6, :cond_5

    new-instance v0, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Part "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was specified twice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    or-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v0, v1, 0x6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: rrule has both UNTIL and COUNT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public final repeatsMonthlyOnDayCount()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final repeatsOnEveryWeekDay()Z
    .locals 5

    const/4 v3, 0x5

    const/4 v0, 0x0

    iget v1, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    if-eq v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    if-ne v2, v3, :cond_0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    aget v3, v3, v1

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_0

    const/high16 v4, 0x400000

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final setStartDate(Landroid/text/format/Time;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->z:Landroid/text/format/Time;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FREQ="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";UNTIL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->c:I

    if-eqz v0, :cond_1

    const-string v0, ";COUNT="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->d:I

    if-eqz v0, :cond_2

    const-string v0, ";INTERVAL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->e:I

    if-eqz v0, :cond_3

    const-string v0, ";WKST="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->e:I

    invoke-static {v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, ";BYSECOND="

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->g:I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->f:[I

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v0, ";BYMINUTE="

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->i:I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->h:[I

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v0, ";BYSECOND="

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->k:I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->j:[I

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    iget v0, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    if-lez v0, :cond_4

    const-string v2, ";BYDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;I)V

    :cond_4
    const-string v0, ";BYMONTHDAY="

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->o:[I

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v0, ";BYYEARDAY="

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->r:I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->q:[I

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v0, ";BYWEEKNO="

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->t:I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->s:[I

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v0, ";BYMONTH="

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->v:I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->u:[I

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v0, ";BYSETPOS="

    iget v2, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->x:I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/EventRecurrence;->w:[I

    invoke-static {v1, v0, v2, v3}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SECONDLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "MINUTELY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "HOURLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "DAILY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "WEEKLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "MONTHLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "YEARLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
