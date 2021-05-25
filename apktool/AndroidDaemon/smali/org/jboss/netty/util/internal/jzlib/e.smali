.class final Lorg/jboss/netty/util/internal/jzlib/e;
.super Ljava/lang/Object;


# static fields
.field private static final g:[I

.field private static final h:[I


# instance fields
.field a:I

.field b:I

.field c:[B

.field final d:I

.field e:I

.field f:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[I

.field private final n:[I

.field private final o:[I

.field private final p:Lorg/jboss/netty/util/internal/jzlib/f;

.field private q:I

.field private r:[I

.field private final s:Ljava/lang/Object;

.field private t:J

.field private final u:Lorg/jboss/netty/util/internal/jzlib/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/e;->g:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/e;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data

    :array_1
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/Object;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->n:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->o:[I

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/f;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/f;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->p:Lorg/jboss/netty/util/internal/jzlib/f;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/g;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/g;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->u:Lorg/jboss/netty/util/internal/jzlib/g;

    const/16 v0, 0x10e0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->r:[I

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->c:[B

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    iput-object p2, p0, Lorg/jboss/netty/util/internal/jzlib/e;->s:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/e;->a(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 18

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    if-ge v4, v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    :goto_0
    move v10, v3

    move v13, v4

    move v3, v5

    move v4, v6

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    packed-switch v5, :pswitch_data_0

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    const/4 v3, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    :goto_2
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    sub-int/2addr v3, v4

    goto :goto_0

    :goto_3
    const/4 v3, 0x3

    if-ge v14, v3, :cond_2

    if-eqz v11, :cond_1

    const/16 p2, 0x0

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v4, v12, 0x1

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v14

    or-int/2addr v15, v3

    add-int/lit8 v14, v14, 0x8

    move v12, v4

    goto :goto_3

    :cond_1
    move-object/from16 v0, p0

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto :goto_2

    :cond_2
    and-int/lit8 v3, v15, 0x7

    and-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->q:I

    ushr-int/lit8 v3, v3, 0x1

    packed-switch v3, :pswitch_data_1

    move v3, v11

    move v4, v12

    move v7, v14

    move v8, v15

    goto/16 :goto_1

    :pswitch_0
    ushr-int/lit8 v3, v15, 0x3

    add-int/lit8 v4, v14, -0x3

    and-int/lit8 v6, v4, 0x7

    ushr-int v5, v3, v6

    sub-int v3, v4, v6

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    move v4, v12

    move v7, v3

    move v8, v5

    move v3, v11

    goto/16 :goto_1

    :pswitch_1
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v3, 0x1

    new-array v5, v3, [I

    const/4 v3, 0x1

    new-array v6, v3, [[I

    const/4 v3, 0x1

    new-array v8, v3, [[I

    invoke-static {v4, v5, v6, v8}, Lorg/jboss/netty/util/internal/jzlib/g;->a([I[I[[I[[I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->p:Lorg/jboss/netty/util/internal/jzlib/f;

    const/4 v7, 0x0

    aget v4, v4, v7

    const/4 v7, 0x0

    aget v5, v5, v7

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/jboss/netty/util/internal/jzlib/f;->a(II[II[II)V

    ushr-int/lit8 v5, v15, 0x3

    add-int/lit8 v3, v14, -0x3

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    move v4, v12

    move v7, v3

    move v8, v5

    move v3, v11

    goto/16 :goto_1

    :pswitch_2
    ushr-int/lit8 v5, v15, 0x3

    add-int/lit8 v3, v14, -0x3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    move v4, v12

    move v7, v3

    move v8, v5

    move v3, v11

    goto/16 :goto_1

    :pswitch_3
    ushr-int/lit8 v3, v15, 0x3

    add-int/lit8 v4, v14, -0x3

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    const-string v5, "invalid block type"

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :goto_4
    :pswitch_4
    const/16 v5, 0x20

    if-ge v7, v5, :cond_4

    if-eqz v3, :cond_3

    const/16 p2, 0x0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v8, v4

    add-int/lit8 v7, v7, 0x8

    move v4, v5

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_4
    xor-int/lit8 v5, v8, -0x1

    ushr-int/lit8 v5, v5, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    const v6, 0xffff

    and-int/2addr v6, v8

    if-eq v5, v6, :cond_5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    const-string v5, "invalid stored block lengths"

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_5
    const v5, 0xffff

    and-int/2addr v5, v8

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->j:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->j:I

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    :goto_5
    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    move v7, v5

    move v8, v5

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->q:I

    if-eqz v6, :cond_7

    const/4 v6, 0x7

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :pswitch_5
    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_8
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    if-ne v13, v5, :cond_9

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    if-eqz v5, :cond_9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    add-int/lit8 v5, v5, -0x1

    :goto_6
    move v10, v5

    :cond_9
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    if-ge v13, v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    sub-int/2addr v5, v13

    add-int/lit8 v5, v5, -0x1

    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    if-ne v13, v9, :cond_31

    move-object/from16 v0, p0

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    if-eqz v9, :cond_31

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    if-lez v5, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    add-int/lit8 v5, v5, -0x1

    :goto_8
    move v10, v5

    :goto_9
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    move-object/from16 v0, p1

    iput-wide v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    sub-int/2addr v5, v13

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    goto :goto_8

    :cond_d
    const/16 p2, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->j:I

    if-le v5, v3, :cond_e

    move v5, v3

    :cond_e
    if-le v5, v10, :cond_30

    move v9, v10

    :goto_a
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->c:[B

    invoke-static {v5, v4, v6, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v4, v9

    sub-int v5, v3, v9

    add-int v4, v13, v9

    sub-int v3, v10, v9

    move-object/from16 v0, p0

    iget v10, v0, Lorg/jboss/netty/util/internal/jzlib/e;->j:I

    sub-int v9, v10, v9

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->j:I

    if-nez v9, :cond_2f

    move-object/from16 v0, p0

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->q:I

    if-eqz v9, :cond_f

    const/4 v9, 0x7

    :goto_b
    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    move v10, v3

    move v13, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_1

    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    :goto_c
    :pswitch_6
    const/16 v5, 0xe

    if-ge v7, v5, :cond_11

    if-eqz v3, :cond_10

    const/16 p2, 0x0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v8, v4

    add-int/lit8 v7, v7, 0x8

    move v4, v5

    goto :goto_c

    :cond_10
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_11
    and-int/lit16 v5, v8, 0x3fff

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->k:I

    and-int/lit8 v6, v5, 0x1f

    const/16 v9, 0x1d

    if-gt v6, v9, :cond_12

    shr-int/lit8 v6, v5, 0x5

    and-int/lit8 v6, v6, 0x1f

    const/16 v9, 0x1d

    if-le v6, v9, :cond_13

    :cond_12
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    const-string v5, "too many length or distance symbols"

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_13
    and-int/lit8 v6, v5, 0x1f

    add-int/lit16 v6, v6, 0x102

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int/2addr v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    array-length v5, v5

    if-ge v5, v6, :cond_16

    :cond_14
    new-array v5, v6, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    :cond_15
    ushr-int/lit8 v8, v8, 0xe

    add-int/lit8 v7, v7, -0xe

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    :pswitch_7
    move v9, v3

    move v10, v4

    move v11, v7

    move v12, v8

    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->k:I

    ushr-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_19

    move v3, v9

    move v4, v10

    :goto_e
    const/4 v5, 0x3

    if-ge v11, v5, :cond_18

    if-eqz v3, :cond_17

    const/16 p2, 0x0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v10, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v11

    or-int/2addr v12, v4

    add-int/lit8 v11, v11, 0x8

    move v4, v10

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    :goto_f
    if-ge v5, v6, :cond_15

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    const/4 v10, 0x0

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/e;->h:[I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    aget v6, v6, v7

    and-int/lit8 v7, v12, 0x7

    aput v7, v5, v6

    ushr-int/lit8 v8, v12, 0x3

    add-int/lit8 v7, v11, -0x3

    move v9, v3

    move v10, v4

    move v11, v7

    move v12, v8

    goto :goto_d

    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/e;->h:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    aget v4, v4, v5

    const/4 v5, 0x0

    aput v5, v3, v4

    goto :goto_10

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->n:[I

    const/4 v4, 0x0

    const/4 v5, 0x7

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->u:Lorg/jboss/netty/util/internal/jzlib/g;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->n:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->o:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->r:[I

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lorg/jboss/netty/util/internal/jzlib/g;->a([I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    :cond_1b
    move-object/from16 v0, p0

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v10, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    :goto_11
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->k:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    and-int/lit8 v5, v3, 0x1f

    add-int/lit16 v5, v5, 0x102

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->n:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move v9, v14

    move v10, v15

    move/from16 v4, v16

    move/from16 v5, v17

    :goto_12
    if-ge v4, v3, :cond_1e

    if-eqz v9, :cond_1d

    const/16 p2, 0x0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v15, v10, 0x1

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x8

    move v10, v15

    goto :goto_12

    :cond_1d
    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v10, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->o:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->r:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->o:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/e;->g:[I

    aget v3, v8, v3

    and-int/2addr v3, v5

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v8, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->r:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->o:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-object v7, Lorg/jboss/netty/util/internal/jzlib/e;->g:[I

    aget v7, v7, v8

    and-int/2addr v7, v5

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v14, v3, v6

    const/16 v3, 0x10

    if-ge v14, v3, :cond_1f

    ushr-int v12, v5, v8

    sub-int v11, v4, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    aput v14, v3, v4

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_11

    :cond_1f
    const/16 v3, 0x12

    if-ne v14, v3, :cond_20

    const/4 v3, 0x7

    move v7, v3

    :goto_13
    const/16 v3, 0x12

    if-ne v14, v3, :cond_21

    const/16 v3, 0xb

    :goto_14
    move v6, v5

    move v5, v4

    :goto_15
    add-int v4, v8, v7

    if-ge v5, v4, :cond_23

    if-eqz v9, :cond_22

    const/16 p2, 0x0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v4, v10, 0x1

    aget-byte v10, v11, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v5

    or-int/2addr v6, v10

    add-int/lit8 v5, v5, 0x8

    move v10, v4

    goto :goto_15

    :cond_20
    add-int/lit8 v3, v14, -0xe

    move v7, v3

    goto :goto_13

    :cond_21
    const/4 v3, 0x3

    goto :goto_14

    :cond_22
    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v10, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_23
    ushr-int/2addr v6, v8

    sub-int/2addr v5, v8

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/e;->g:[I

    aget v4, v4, v7

    and-int/2addr v4, v6

    add-int/2addr v4, v3

    ushr-int v12, v6, v7

    sub-int v11, v5, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->k:I

    add-int v6, v5, v4

    and-int/lit8 v7, v3, 0x1f

    add-int/lit16 v7, v7, 0x102

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v7

    if-gt v6, v3, :cond_24

    const/16 v3, 0x10

    if-ne v14, v3, :cond_25

    if-gtz v5, :cond_25

    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    const-string v3, "invalid bit length repeat"

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v10, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_25
    const/16 v3, 0x10

    if-ne v14, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    add-int/lit8 v6, v5, -0x1

    aget v3, v3, v6

    :goto_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    add-int/lit8 v6, v5, 0x1

    aput v3, v7, v5

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2e

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->l:I

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_11

    :cond_26
    const/4 v3, 0x0

    goto :goto_16

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->o:[I

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    const/4 v3, 0x1

    new-array v7, v3, [I

    const/4 v3, 0x1

    new-array v8, v3, [I

    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x1

    new-array v10, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v8, v3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/e;->k:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->u:Lorg/jboss/netty/util/internal/jzlib/g;

    and-int/lit8 v4, v5, 0x1f

    add-int/lit16 v4, v4, 0x101

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jboss/netty/util/internal/jzlib/e;->r:[I

    move-object/from16 v12, p1

    invoke-virtual/range {v3 .. v12}, Lorg/jboss/netty/util/internal/jzlib/g;->a(II[I[I[I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v3

    if-eqz v3, :cond_29

    const/4 v4, -0x3

    if-ne v3, v4, :cond_28

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->m:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    :cond_28
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v15, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->p:Lorg/jboss/netty/util/internal/jzlib/f;

    const/4 v4, 0x0

    aget v4, v7, v4

    const/4 v5, 0x0

    aget v5, v8, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/e;->r:[I

    const/4 v7, 0x0

    aget v7, v9, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->r:[I

    const/4 v9, 0x0

    aget v9, v10, v9

    invoke-virtual/range {v3 .. v9}, Lorg/jboss/netty/util/internal/jzlib/f;->a(II[II[II)V

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    :goto_17
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v15, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p1

    iput-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->p:Lorg/jboss/netty/util/internal/jzlib/f;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v3, v0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/f;->a(Lorg/jboss/netty/util/internal/jzlib/e;Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_2a
    const/16 p2, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    if-ge v4, v3, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    :goto_18
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->q:I

    if-nez v9, :cond_2c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    move v10, v3

    move v13, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    sub-int/2addr v3, v4

    goto :goto_18

    :cond_2c
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    :goto_19
    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    if-eq v4, v9, :cond_2d

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v7, v6, v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_2d
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    :goto_1a
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v6, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    move-object/from16 v0, p1

    iput-wide v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    move-object/from16 v0, p1

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v3, v4, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    move-object/from16 v0, p1

    iput-wide v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    const/4 v3, -0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/e;->b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v3

    goto/16 :goto_2

    :cond_2e
    move v5, v6

    goto/16 :goto_16

    :cond_2f
    move v10, v3

    move v13, v4

    move v3, v5

    move v4, v6

    goto/16 :goto_1

    :cond_30
    move v9, v5

    goto/16 :goto_a

    :cond_31
    move v10, v5

    goto/16 :goto_9

    :pswitch_9
    move v14, v3

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_11

    :pswitch_a
    move v14, v3

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_17

    :pswitch_b
    move v5, v3

    move v6, v4

    move v4, v13

    goto/16 :goto_19

    :pswitch_c
    move v5, v3

    move v6, v4

    goto/16 :goto_1a

    :pswitch_d
    move v11, v3

    move v12, v4

    move v14, v7

    move v15, v8

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final a(Lorg/jboss/netty/util/internal/jzlib/ZStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/e;->a(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->c:[B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->r:[I

    return-void
.end method

.method final a(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->t:J

    aput-wide v0, p2, v3

    :cond_0
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->i:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->a:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->b:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->s:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lorg/jboss/netty/util/internal/jzlib/a;->a(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->t:J

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    :cond_1
    return-void
.end method

.method final a([BII)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->c:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    return-void
.end method

.method final b(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 9

    const/4 v8, -0x5

    const/4 v1, 0x0

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    if-gt v3, v0, :cond_7

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    :goto_0
    sub-int/2addr v0, v3

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v0, v4, :cond_0

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    :cond_0
    if-eqz v0, :cond_1

    if-ne p2, v8, :cond_1

    move p2, v1

    :cond_1
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v4, v0

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/e;->s:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/e;->t:J

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/e;->c:[B

    invoke-static {v4, v5, v6, v3, v0}, Lorg/jboss/netty/util/internal/jzlib/a;->a(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/e;->t:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    :cond_2
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/e;->c:[B

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v3, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    add-int/2addr v0, v3

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    if-ne v0, v3, :cond_3

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    :cond_3
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->f:I

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v0, v3, :cond_4

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    :cond_4
    if-eqz v0, :cond_5

    if-ne p2, v8, :cond_5

    move p2, v1

    :cond_5
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v0

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    iget-wide v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->s:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->t:J

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/e;->c:[B

    invoke-static {v3, v4, v5, v1, v0}, Lorg/jboss/netty/util/internal/jzlib/a;->a(J[BII)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->t:J

    iput-wide v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    :cond_6
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/e;->c:[B

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v2, v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->e:I

    return p2

    :cond_7
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/e;->d:I

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_1
.end method
