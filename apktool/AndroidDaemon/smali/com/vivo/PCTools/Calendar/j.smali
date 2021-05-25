.class final Lcom/vivo/PCTools/Calendar/j;
.super Lcom/vivo/PCTools/Calendar/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/PCTools/Calendar/t;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/PCTools/Calendar/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final parsePart(Ljava/lang/String;Lcom/vivo/PCTools/Calendar/EventRecurrence;)I
    .locals 3

    const/16 v0, -0x1f

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/vivo/PCTools/Calendar/j;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    iput-object v0, p2, Lcom/vivo/PCTools/Calendar/EventRecurrence;->o:[I

    array-length v0, v0

    iput v0, p2, Lcom/vivo/PCTools/Calendar/EventRecurrence;->p:I

    const/16 v0, 0x100

    return v0
.end method
