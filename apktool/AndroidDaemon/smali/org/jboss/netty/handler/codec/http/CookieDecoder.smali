.class public Lorg/jboss/netty/handler/codec/http/CookieDecoder;
.super Ljava/lang/Object;


# static fields
.field private static final COMMA:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractKeyValuePairs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    move v1, v6

    :goto_0
    if-eq v1, v5, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    if-eq v1, v5, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x24

    if-ne v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    move-object v0, v2

    move v3, v1

    move-object v1, v2

    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v3, v0

    move-object v0, v2

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v3, v0

    move-object v0, v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    if-ne v3, v5, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v0, 0x22

    if-eq v7, v0, :cond_4

    const/16 v0, 0x27

    if-ne v7, v0, :cond_8

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v4, v3, 0x1

    move v0, v6

    move v3, v4

    :goto_3
    if-ne v3, v5, :cond_5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v6

    move v3, v4

    goto :goto_3

    :sswitch_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v3, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v0, v6

    move v3, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v3, v4

    goto :goto_2

    :cond_7
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x5c

    if-ne v3, v9, :cond_b

    const/4 v0, 0x1

    move v3, v4

    goto :goto_3

    :cond_8
    const/16 v0, 0x3b

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v3, v4

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v3, v5

    goto/16 :goto_2

    :cond_a
    return-void

    :cond_b
    move v3, v4

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/util/Set;
    .locals 26

    new-instance v17, Ljava/util/ArrayList;

    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v18, Ljava/util/ArrayList;

    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/CookieDecoder;->extractKeyValuePairs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "Version"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v3

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move/from16 v24, v4

    move v4, v3

    move/from16 v3, v24

    goto :goto_2

    :cond_2
    new-instance v16, Ljava/util/TreeSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeSet;-><init>()V

    move v5, v3

    move v6, v4

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_13

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    new-instance v19, Lorg/jboss/netty/handler/codec/http/DefaultCookie;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v4, -0x80000000

    new-instance v20, Ljava/util/ArrayList;

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v3, v6, 0x1

    move v14, v3

    move v15, v6

    move v6, v4

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_10

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v21, "Discard"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/4 v3, 0x1

    move-object v4, v7

    move-object v7, v10

    move v10, v3

    move v3, v6

    move-object v6, v9

    move v9, v12

    move/from16 v24, v11

    move v11, v5

    move-object v5, v8

    move/from16 v8, v24

    :goto_5
    add-int/lit8 v12, v14, 0x1

    add-int/lit8 v13, v15, 0x1

    move v14, v12

    move v15, v13

    move v12, v9

    move v13, v10

    move-object v9, v6

    move-object v10, v7

    move-object v7, v4

    move v6, v3

    move-object/from16 v24, v5

    move v5, v11

    move v11, v8

    move-object/from16 v8, v24

    goto :goto_4

    :cond_4
    const-string v21, "Secure"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/4 v3, 0x1

    move-object v4, v7

    move-object v7, v10

    move v10, v13

    move-object/from16 v24, v9

    move v9, v3

    move v3, v6

    move-object/from16 v6, v24

    move/from16 v25, v11

    move v11, v5

    move-object v5, v8

    move/from16 v8, v25

    goto :goto_5

    :cond_5
    const-string v21, "HTTPOnly"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    const/4 v3, 0x1

    move-object v4, v7

    move v11, v5

    move-object v5, v8

    move-object v7, v10

    move v8, v3

    move v10, v13

    move v3, v6

    move-object v6, v9

    move v9, v12

    goto :goto_5

    :cond_6
    const-string v21, "Comment"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    move v3, v6

    move v10, v13

    move-object v6, v9

    move v9, v12

    move-object/from16 v24, v4

    move-object v4, v7

    move-object/from16 v7, v24

    move-object/from16 v25, v8

    move v8, v11

    move v11, v5

    move-object/from16 v5, v25

    goto :goto_5

    :cond_7
    const-string v21, "CommentURL"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    move v3, v6

    move v9, v12

    move-object v6, v4

    move-object v4, v7

    move-object v7, v10

    move v10, v13

    move-object/from16 v24, v8

    move v8, v11

    move v11, v5

    move-object/from16 v5, v24

    goto :goto_5

    :cond_8
    const-string v21, "Domain"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    move v3, v6

    move v8, v11

    move-object v6, v9

    move v11, v5

    move v9, v12

    move-object v5, v4

    move-object v4, v7

    move-object v7, v10

    move v10, v13

    goto/16 :goto_5

    :cond_9
    const-string v21, "Path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    move v3, v6

    move-object v7, v10

    move-object v6, v9

    move v10, v13

    move v9, v12

    move/from16 v24, v11

    move v11, v5

    move-object v5, v8

    move/from16 v8, v24

    goto/16 :goto_5

    :cond_a
    const-string v21, "Expires"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    :try_start_1
    new-instance v3, Lorg/jboss/netty/handler/codec/http/a;

    invoke-direct {v3}, Lorg/jboss/netty/handler/codec/http/a;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jboss/netty/handler/codec/http/a;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v3, v3, v21

    const-wide/16 v21, 0x0

    cmp-long v21, v3, v21

    if-gtz v21, :cond_b

    const/4 v3, 0x0

    move-object v4, v7

    move-object v6, v9

    move-object v7, v10

    move v9, v12

    move v10, v13

    move-object/from16 v24, v8

    move v8, v11

    move v11, v5

    move-object/from16 v5, v24

    goto/16 :goto_5

    :cond_b
    const-wide/16 v21, 0x3e8

    div-long v21, v3, v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    const-wide/16 v22, 0x3e8

    rem-long v3, v3, v22
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v22, 0x0

    cmp-long v3, v3, v22

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_6
    add-int v3, v3, v21

    move-object v4, v7

    move-object v6, v9

    move-object v7, v10

    move v9, v12

    move v10, v13

    move-object/from16 v24, v8

    move v8, v11

    move v11, v5

    move-object/from16 v5, v24

    goto/16 :goto_5

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    :catch_1
    move-exception v3

    move v3, v6

    move-object v4, v7

    move-object v6, v9

    move-object v7, v10

    move v9, v12

    move v10, v13

    move-object/from16 v24, v8

    move v8, v11

    move v11, v5

    move-object/from16 v5, v24

    goto/16 :goto_5

    :cond_d
    const-string v21, "Max-Age"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v4, v7

    move-object v6, v9

    move-object v7, v10

    move v9, v12

    move v10, v13

    move-object/from16 v24, v8

    move v8, v11

    move v11, v5

    move-object/from16 v5, v24

    goto/16 :goto_5

    :cond_e
    const-string v21, "Version"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v6

    move-object v4, v7

    move-object v6, v9

    move-object v7, v10

    move v9, v12

    move v10, v13

    move-object/from16 v24, v8

    move v8, v11

    move v11, v5

    move-object/from16 v5, v24

    goto/16 :goto_5

    :cond_f
    const-string v21, "Port"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    move/from16 v21, v0

    const/4 v3, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v3, v0, :cond_14

    aget-object v22, v4, v3

    :try_start_2
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/jboss/netty/handler/codec/http/Cookie;->setVersion(I)V

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/jboss/netty/handler/codec/http/Cookie;->setMaxAge(I)V

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Lorg/jboss/netty/handler/codec/http/Cookie;->setPath(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lorg/jboss/netty/handler/codec/http/Cookie;->setDomain(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lorg/jboss/netty/handler/codec/http/Cookie;->setSecure(Z)V

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/jboss/netty/handler/codec/http/Cookie;->setHttpOnly(Z)V

    if-lez v5, :cond_11

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/jboss/netty/handler/codec/http/Cookie;->setComment(Ljava/lang/String;)V

    :cond_11
    const/4 v3, 0x1

    if-le v5, v3, :cond_12

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Lorg/jboss/netty/handler/codec/http/Cookie;->setCommentUrl(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v20}, Lorg/jboss/netty/handler/codec/http/Cookie;->setPorts(Ljava/lang/Iterable;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/jboss/netty/handler/codec/http/Cookie;->setDiscard(Z)V

    :cond_12
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v15, 0x1

    move v6, v4

    goto/16 :goto_3

    :cond_13
    move-object/from16 v3, v16

    goto/16 :goto_0

    :catch_2
    move-exception v22

    goto :goto_8

    :cond_14
    move v3, v6

    move-object v4, v7

    move-object v6, v9

    move-object v7, v10

    move v9, v12

    move v10, v13

    move-object/from16 v24, v8

    move v8, v11

    move v11, v5

    move-object/from16 v5, v24

    goto/16 :goto_5
.end method
