.class public final Lcom/vivo/PCTools/r/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vivo/PCTools/r/c;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/r/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/r/c;->getmContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    return-void
.end method

.method public static Uri2JsonString(Ljava/util/ArrayList;JLandroid/content/Context;Ljava/lang/String;)V
    .locals 24

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v8, 0x0

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.iqoo.secure"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/r/a;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "simple"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "querytype"

    const-string v5, "all"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :goto_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/r/a;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "simple"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "date"

    const-string v3, "date"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v14, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "message_count"

    const-string v3, "message_count"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "read"

    const-string v3, "read"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "has_attachment"

    const-string v3, "has_attachment"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error"

    const-string v3, "error"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "unreadcount"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const-string v2, "unreadcount"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_5
    const-string v3, "unreadcount"

    invoke-virtual {v14, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "is_encrypted"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    const-string v2, "is_encrypted"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_6
    const-string v3, "is_encrypted"

    invoke-virtual {v14, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "recipient_ids"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    array-length v0, v15

    move/from16 v17, v0

    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move/from16 v0, v17

    if-lt v11, v0, :cond_8

    const-string v2, "address"

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "thread"

    invoke-virtual {v13, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    move-object v8, v10

    move v10, v2

    :goto_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v10, v2, :cond_9

    const-string v2, "sms"

    invoke-virtual {v13, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_8
    :try_start_5
    aget-object v3, v15, v11

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/vivo/PCTools/r/a;->g:Landroid/net/Uri;

    invoke-static {v4, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v2, v8, 0x1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move v8, v2

    goto :goto_2

    :cond_9
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v3

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v2, "thread_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v2, "address"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v2, "read"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v2, "status"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v2, "type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v2, "body"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v2, "error_code"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v2, "seen"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/4 v2, -0x1

    const-string v4, "sim_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_c

    const-string v2, "sim_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v4, v2

    :goto_6
    const/4 v2, 0x0

    const-string v22, "encrypted"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    const-string v2, "encrypted"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_a
    :goto_7
    const-string v22, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "thread_id"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "address"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "date"

    invoke-virtual {v5, v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "read"

    move/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "status"

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "type"

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "error_code"

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "seen"

    move/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "sim_id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "encrypted"

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "body"

    invoke-static/range {v19 .. v19}, Landroid/support/v4/media/session/MediaSessionCompat;->trimIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v10, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-object v8, v3

    goto/16 :goto_3

    :cond_c
    const-string v4, "sub_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_11

    const-string v2, "sub_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v4, v2

    goto/16 :goto_6

    :cond_d
    const-string v22, "is_encrypted"

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const-string v2, "is_encrypted"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v2

    goto/16 :goto_7

    :catch_0
    move-exception v2

    move-object v3, v8

    move-object v4, v10

    :goto_8
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    move-object v9, v8

    :goto_9
    if-eqz v10, :cond_f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v10, v3

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v10, v8

    goto :goto_9

    :catchall_4
    move-exception v2

    move-object v9, v3

    move-object v10, v4

    goto :goto_9

    :catch_1
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    goto :goto_8

    :catch_2
    move-exception v2

    move-object v4, v3

    move-object v3, v9

    goto :goto_8

    :catch_3
    move-exception v2

    move-object v3, v9

    move-object v4, v8

    goto :goto_8

    :cond_11
    move v4, v2

    goto/16 :goto_6

    :cond_12
    move v2, v8

    goto/16 :goto_4

    :cond_13
    move v2, v8

    goto/16 :goto_5
.end method

.method public static getFavoriteEnable(Landroid/content/Context;)I
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/security"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "enable"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const-string v0, "enable"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static handleSmsSent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v0, 0x5

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "SmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uri = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorCode"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "lastone"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "result"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "thread_id"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SmsService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "result = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lastone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-short v6, v4

    invoke-virtual {v3, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v3, v11}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    if-ne v5, v10, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-static {v3}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    :cond_1
    return-void

    :pswitch_1
    invoke-static {p0, v2, v11, v3}, Lcom/vivo/PCTools/r/p;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_0

    :pswitch_2
    invoke-static {p0, v2, v0, v3}, Lcom/vivo/PCTools/r/p;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static smsNewMessageNotify(Landroid/content/Context;Ljava/lang/String;)Lcom/vivo/PCTools/q/a/a;
    .locals 20

    const-string v2, "SmsService"

    const-string v3, "smsNewMessageNotify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v8}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const/4 v9, 0x0

    const/4 v10, -0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v2, "thread_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v4, "address"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "date"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v4, "read"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v4, "type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v4, "body"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v4, "error_code"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v4, "seen"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v4, -0x1

    const-string v5, "sim_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const-string v4, "sim_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v5, v4

    :goto_0
    const/4 v4, 0x0

    const-string v18, "encrypted"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const-string v4, "encrypted"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    :cond_0
    :goto_1
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "thread_id"

    invoke-virtual {v11, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "address"

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "date"

    invoke-virtual {v11, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "read"

    invoke-virtual {v11, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "status"

    invoke-virtual {v11, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "type"

    invoke-virtual {v11, v6, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "error_code"

    move/from16 v0, v16

    invoke-virtual {v11, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "seen"

    move/from16 v0, v17

    invoke-virtual {v11, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "sim_id"

    invoke-virtual {v11, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "encrypted"

    invoke-virtual {v11, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "body"

    invoke-static {v15}, Landroid/support/v4/media/session/MediaSessionCompat;->trimIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v4, v2

    :goto_2
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".sms_send_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-short v4, v4

    invoke-virtual {v8, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v8, v4, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v8, v2, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    move-object v2, v8

    :goto_3
    return-object v2

    :cond_2
    :try_start_3
    const-string v5, "sub_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_6

    const-string v4, "sub_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v5, v4

    goto/16 :goto_0

    :cond_3
    const-string v18, "is_encrypted"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const-string v4, "is_encrypted"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move-object v3, v9

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, v8

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v3, v9

    :goto_5
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-short v4, v4

    invoke-virtual {v8, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v8, v4, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v8, v2, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    move-object v2, v8

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    int-to-short v5, v5

    invoke-virtual {v8, v5}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v8, v5, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v8, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v8, v4, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    throw v2

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_4

    :cond_6
    move v5, v4

    goto/16 :goto_0

    :cond_7
    move v4, v10

    goto/16 :goto_2
.end method


# virtual methods
.method public final CopySms2Fav(Lcom/vivo/PCTools/q/a/a;)V
    .locals 14

    const-string v0, "SmsService"

    const-string v1, "CopySms2Fav"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v8}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v1

    invoke-virtual {v8, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "date"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v1, "body"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "encrypted"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v2, "encrypted"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    invoke-static {v1}, Lcom/vivo/PCTools/r/r;->forceGetDesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    :goto_0
    sget-object v1, Lcom/vivo/PCTools/r/a;->j:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? AND date=? AND content=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x2

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "SmsService"

    const-string v2, "RELY_FAVEXIST"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v8}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "number"

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "save_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "content"

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/PCTools/r/a;->j:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v8}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    :try_start_3
    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v8}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v1, v8}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :cond_7
    move-object v7, v1

    goto/16 :goto_0
.end method

.method public final GetAllSmsAndMMS(Lcom/vivo/PCTools/q/a/a;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v0, "SmsService"

    const-string v1, "GetAllSmsAndMMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".sms_send_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_SmsMmsXml.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->createSmsMmsXmlFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v2}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    if-eq v1, v5, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_0
    invoke-virtual {v2, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method public final backup2cloud(Lcom/vivo/PCTools/q/a/a;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "SmsService"

    const-string v1, "sms backup2cloud"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/vivo/PCTools/r/g;

    invoke-direct {v2, p0, v1}, Lcom/vivo/PCTools/r/g;-><init>(Lcom/vivo/PCTools/r/f;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.vivo.PCTools.sms.backup_finish"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "BBKCloudReceiverForSms.cloud.bbk.com"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final copyFavoriteMessage(Lcom/vivo/PCTools/q/a/a;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    const-string v0, "SmsService"

    const-string v1, "copySimMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    new-instance v4, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v4}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v4, v9}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v4, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v1, 0x14

    invoke-virtual {v4, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v4, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v4, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-array v5, v0, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-static {v1, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, ""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "utf-8"

    invoke-direct {v1, v5, v6, v0, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lcom/vivo/PCTools/r/s;

    invoke-direct {v0}, Lcom/vivo/PCTools/r/s;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/r/s;->phraseInsertFavoriteMessage(Ljava/io/InputStream;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/vivo/PCTools/r/a;->j:Landroid/net/Uri;

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".sms_send_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_FavoriteSms.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->createMyFavoriteMessagesXmlFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, 0x3

    :try_start_5
    invoke-virtual {v4, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-ne v2, v9, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v4, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :try_start_9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_4
    :goto_4
    throw v0

    :cond_5
    :try_start_a
    const-string v0, "SmsService"

    const-string v2, "------return error value---"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public final copySimMessage(Lcom/vivo/PCTools/q/a/a;)V
    .locals 0

    return-void
.end method

.method public final deleteSimMessage(Lcom/vivo/PCTools/q/a/a;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    new-instance v3, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v3, v7}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v3, v7}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v3, v7}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    if-ne v0, v1, :cond_3

    invoke-virtual {v3, v7}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_1
    array-length v3, v0

    if-le v3, v1, :cond_2

    sget-object v3, Lcom/vivo/PCTools/r/a;->h:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    const-string v6, "ForMultiDelete"

    invoke-static {v5, v4, v3, v6, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_4

    sget-object v3, Lcom/vivo/PCTools/r/a;->h:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method public final getMyFavoriteMessage(Lcom/vivo/PCTools/q/a/a;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v0, "SmsService"

    const-string v2, "----getMyFavoriteMessage----"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".sms_send_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_FavoriteSms.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->createMyFavoriteMessagesXmlFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_0
    new-instance v3, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v3, v5}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    if-eqz v0, :cond_1

    if-ne v0, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v3, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_1
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1
.end method

.method public final getSingleMMSByID(Lcom/vivo/PCTools/q/a/a;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "SmsService"

    const-string v1, "getSingleMMSByID"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v2, Lcom/vivo/PCTools/r/j;->a:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/vivo/PCTools/mms/a;->createSingleMMSPduFile(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_0
    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v2, v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;[B)V

    return-void

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method public final insertMMSFromPC(Lcom/vivo/PCTools/q/a/a;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    const-string v0, "SmsService"

    const-string v1, "insertMMSFromPC"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    new-instance v2, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v2}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v2, v7}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v1, 0x22

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-array v1, v0, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v3

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "utf-8"

    invoke-direct {v3, v1, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/vivo/PCTools/mms/a;->insertMMStoDB(Landroid/content/Context;[B)I

    move-result v0

    if-ne v0, v6, :cond_0

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_1

    :cond_1
    if-ne v0, v7, :cond_2

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v0

    :cond_2
    const/4 v0, -0x1

    :try_start_4
    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v0, v3, v2

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    aget-char v4, v3, v0

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final smsDeleteAllSms(Lcom/vivo/PCTools/q/a/a;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v0, "SmsService"

    const-string v1, "smsDeleteSms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v8}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v8, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    :try_start_0
    sget-object v1, Lcom/vivo/PCTools/r/a;->b:Landroid/net/Uri;

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, v6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/vivo/PCTools/r/a;->c:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v8}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_7
    const/4 v2, 0x0

    :try_start_4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/vivo/PCTools/r/a;->b:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v8}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    move-object v7, v1

    move-object v1, v6

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v6

    move-object v6, v1

    move-object v1, v9

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v8}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v7, v6

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :try_start_6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/vivo/PCTools/r/a;->c:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v8}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v7

    goto :goto_4

    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_5
    move-object v1, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v7, v6

    move-object v6, v1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v6

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    goto :goto_4

    :cond_b
    move-object v7, v1

    goto/16 :goto_1
.end method

.method public final smsDeleteFavSms(Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "SmsService"

    const-string v2, "smsDeleteFavSms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :goto_0
    array-length v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    sget-object v4, Lcom/vivo/PCTools/r/a;->j:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v0
.end method

.method public final smsDeleteMms(Lcom/vivo/PCTools/q/a/a;)V
    .locals 5

    const/4 v3, 0x0

    const-string v0, "SmsService"

    const-string v1, "smsDeleteMms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    const-string v3, "content://mms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0
.end method

.method public final smsDeleteSimSms(Lcom/vivo/PCTools/q/a/a;)V
    .locals 8

    const/4 v1, 0x0

    const-string v0, "SmsService"

    const-string v2, "smsDeleteSimSms"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v2

    invoke-virtual {v3, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "Sim0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Sim-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Sim"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move v2, v1

    :goto_1
    array-length v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v1, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    :try_start_1
    sget-object v1, Lcom/vivo/PCTools/r/a;->h:Landroid/net/Uri;

    aget-object v6, v4, v2

    invoke-static {v1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/vivo/PCTools/r/a;->i:Landroid/net/Uri;

    aget-object v6, v4, v2

    invoke-static {v1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v0
.end method

.method public final smsDeleteSms(Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "SmsService"

    const-string v2, "smsDeleteSms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :goto_0
    array-length v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v4, "content://sms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v0
.end method

.method public final smsDeleteThreads(Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :goto_0
    array-length v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v4, "content://mms-sms/conversations"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v0
.end method

.method public final smsGetSimMessage(Lcom/vivo/PCTools/q/a/a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "SmsService"

    const-string v1, "----smsGetSimMessage----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".sms_send_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_SimSms.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->createSimMessagesXmlFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_0
    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method public final smsInsertSms(Lcom/vivo/PCTools/q/a/a;)V
    .locals 6

    const/4 v4, 0x0

    const-string v0, "SmsService"

    const-string v1, "smsInsertSms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    new-instance v2, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v2}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-array v1, v0, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v3

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "utf-8"

    invoke-direct {v3, v1, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Lcom/vivo/PCTools/r/s;

    invoke-direct {v3}, Lcom/vivo/PCTools/r/s;-><init>()V

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/r/s;->parse(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    const-string v4, "sms"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v0
.end method

.method public final smsSendMessage(Lcom/vivo/PCTools/q/a/a;)V
    .locals 25

    const-string v1, "SmsService"

    const-string v2, "smsSendMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v21, Lcom/vivo/PCTools/q/a/a;

    invoke-direct/range {v21 .. v21}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/4 v1, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_0
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "address"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v1, "slot"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    new-instance v22, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vivo/PCTools/r/f;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "thread_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "thread_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v9, v1

    :goto_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    move-object/from16 v0, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    move/from16 v0, v19

    invoke-static {v1, v0}, Lcom/vivo/PCTools/r/n;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/vivo/PCTools/r/n;

    move-result-object v24

    const/4 v11, -0x1

    if-eqz v24, :cond_3

    move-object/from16 v0, v24

    iget-wide v1, v0, Lcom/vivo/PCTools/r/n;->a:J

    long-to-int v11, v1

    :cond_3
    sget-object v1, Lcom/vivo/PCTools/util/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move v12, v1

    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v12, v1, :cond_6

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".sms_send_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v0, v9, v10, v2, v1}, Lcom/vivo/PCTools/r/f;->Uri2JsonString(Ljava/util/ArrayList;JLandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_1

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/vivo/PCTools/r/q;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v9

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vivo/PCTools/r/p;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_3

    :cond_7
    const/4 v1, 0x0

    move v12, v1

    :goto_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/vivo/PCTools/r/p;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_5

    :cond_8
    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    if-eqz v24, :cond_9

    new-instance v12, Lcom/vivo/PCTools/r/e;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v14, v4

    move-wide/from16 v17, v9

    move/from16 v20, v11

    invoke-direct/range {v12 .. v20}, Lcom/vivo/PCTools/r/e;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JII)V

    :goto_6
    invoke-virtual {v12}, Lcom/vivo/PCTools/r/e;->sendSms()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_9
    new-instance v12, Lcom/vivo/PCTools/r/e;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v14, v4

    move-wide/from16 v17, v9

    invoke-direct/range {v12 .. v19}, Lcom/vivo/PCTools/r/e;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v1

    const/4 v2, -0x1

    :try_start_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const/4 v2, -0x1

    :try_start_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/r/f;->b:Lcom/vivo/PCTools/r/c;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/r/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    throw v1
.end method

.method public final smsUpdateToRead(Lcom/vivo/PCTools/q/a/a;)V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "SmsService"

    const-string v1, "smsUpdateToRead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "SmsService"

    const-string v1, "Error Date"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToInt([BI)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/PCTools/r/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "read=? AND thread_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "content://mms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "read=? AND thread_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
