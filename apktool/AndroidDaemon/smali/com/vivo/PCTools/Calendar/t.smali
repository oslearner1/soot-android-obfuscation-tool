.class abstract Lcom/vivo/PCTools/Calendar/t;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseIntRange(Ljava/lang/String;IIZ)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, p1, :cond_1

    if-gt v0, p2, :cond_1

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    :cond_1
    new-instance v0, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Integer value out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v0
.end method

.method public static parseNumberList(Ljava/lang/String;IIZ)[I
    .locals 5

    const/4 v1, 0x0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3}, Lcom/vivo/PCTools/Calendar/t;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v2

    aput v2, v0, v1

    :cond_0
    return-object v0

    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v0, v3, [I

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-static {v4, p1, p2, p3}, Lcom/vivo/PCTools/Calendar/t;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract parsePart(Ljava/lang/String;Lcom/vivo/PCTools/Calendar/EventRecurrence;)I
.end method
