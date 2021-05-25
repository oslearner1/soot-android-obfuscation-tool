.class public final Lcom/vivo/PCTools/i/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/PCTools/i/a;->a:J

    iput-object v3, p0, Lcom/vivo/PCTools/i/a;->b:Ljava/lang/String;

    iput-wide v4, p0, Lcom/vivo/PCTools/i/a;->c:J

    iput-wide v4, p0, Lcom/vivo/PCTools/i/a;->d:J

    iput v2, p0, Lcom/vivo/PCTools/i/a;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/PCTools/i/a;->f:I

    iput v2, p0, Lcom/vivo/PCTools/i/a;->g:I

    iput-object v3, p0, Lcom/vivo/PCTools/i/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JJIIILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/PCTools/i/a;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/i/a;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/PCTools/i/a;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/PCTools/i/a;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/PCTools/i/a;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/PCTools/i/a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/PCTools/i/a;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/i/a;->h:Ljava/lang/String;

    iput-wide p1, p0, Lcom/vivo/PCTools/i/a;->a:J

    iput-object p3, p0, Lcom/vivo/PCTools/i/a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/vivo/PCTools/i/a;->c:J

    iput-wide p6, p0, Lcom/vivo/PCTools/i/a;->d:J

    iput p8, p0, Lcom/vivo/PCTools/i/a;->e:I

    iput p9, p0, Lcom/vivo/PCTools/i/a;->f:I

    iput p10, p0, Lcom/vivo/PCTools/i/a;->g:I

    iput-object p11, p0, Lcom/vivo/PCTools/i/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get_data()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/i/a;->c:J

    return-wide v0
.end method

.method public final get_data_id()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/i/a;->g:I

    return v0
.end method

.method public final get_duration()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/i/a;->d:J

    return-wide v0
.end method

.method public final get_id()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/i/a;->a:J

    return-wide v0
.end method

.method public final get_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/i/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final get_number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/i/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final get_raw_contact_id()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/i/a;->f:I

    return v0
.end method

.method public final get_type()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/i/a;->e:I

    return v0
.end method

.method public final set_data_id(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/i/a;->g:I

    return-void
.end method

.method public final set_date(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/i/a;->c:J

    return-void
.end method

.method public final set_duration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/i/a;->d:J

    return-void
.end method

.method public final set_id(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/vivo/PCTools/i/a;->a:J

    return-void
.end method

.method public final set_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/a;->h:Ljava/lang/String;

    return-void
.end method

.method public final set_number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final set_raw_contact_id(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/i/a;->f:I

    return-void
.end method

.method public final set_type(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/i/a;->e:I

    return-void
.end method
