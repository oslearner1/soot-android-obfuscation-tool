.class final Lcom/vivo/PCTools/Calendar/s;
.super Lcom/vivo/PCTools/Calendar/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/PCTools/Calendar/t;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/PCTools/Calendar/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final parsePart(Ljava/lang/String;Lcom/vivo/PCTools/Calendar/EventRecurrence;)I
    .locals 3

    invoke-static {}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid WKST value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Lcom/vivo/PCTools/Calendar/EventRecurrence;->e:I

    const/16 v0, 0x2000

    return v0
.end method
