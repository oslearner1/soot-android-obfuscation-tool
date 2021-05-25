.class final Lcom/vivo/PCTools/Calendar/f;
.super Lcom/vivo/PCTools/Calendar/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/PCTools/Calendar/t;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/PCTools/Calendar/f;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[I[II)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x35

    const/16 v3, 0x35

    invoke-static {v1, v2, v3, v4}, Lcom/vivo/PCTools/Calendar/f;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v1

    aput v1, p2, p3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid BYDAY value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, p3

    return-void
.end method


# virtual methods
.method public final parsePart(Ljava/lang/String;Lcom/vivo/PCTools/Calendar/EventRecurrence;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    new-array v2, v0, [I

    new-array v1, v0, [I

    invoke-static {p1, v2, v1, v3}, Lcom/vivo/PCTools/Calendar/f;->a(Ljava/lang/String;[I[II)V

    :cond_0
    iput-object v2, p2, Lcom/vivo/PCTools/Calendar/EventRecurrence;->l:[I

    iput-object v1, p2, Lcom/vivo/PCTools/Calendar/EventRecurrence;->m:[I

    iput v0, p2, Lcom/vivo/PCTools/Calendar/EventRecurrence;->n:I

    const/16 v0, 0x80

    return v0

    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    new-array v2, v0, [I

    new-array v1, v0, [I

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v5, v4, v3

    invoke-static {v5, v2, v1, v3}, Lcom/vivo/PCTools/Calendar/f;->a(Ljava/lang/String;[I[II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
