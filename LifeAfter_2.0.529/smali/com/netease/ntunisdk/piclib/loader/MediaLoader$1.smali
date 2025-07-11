.class Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;
.super Lcom/netease/ntunisdk/piclib/thread/PriorityTask;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->loadMedia(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;Ljava/lang/String;ZJJLcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/thread/PriorityTask<",
        "Ljava/util/List<",
        "Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/loader/MediaLoader;

.field final synthetic val$finalSupportGif:Z

.field final synthetic val$loadListener:Lcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;

.field final synthetic val$mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

.field final synthetic val$recentPro:Ljava/lang/String;

.field final synthetic val$videoMaxSelectDuration:J

.field final synthetic val$videoMaxSelectSize:J


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/loader/MediaLoader;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;Ljava/lang/String;ZJJLcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mediaType",
            "val$recentPro",
            "val$finalSupportGif",
            "val$videoMaxSelectDuration",
            "val$videoMaxSelectSize",
            "val$loadListener"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaLoader;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object p3, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$recentPro:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$finalSupportGif:Z

    iput-wide p5, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$videoMaxSelectDuration:J

    iput-wide p7, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$videoMaxSelectSize:J

    iput-object p9, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$loadListener:Lcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;

    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->doInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 103
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaLoader;

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->getSelection(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)Ljava/lang/String;

    move-result-object v6

    .line 104
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaLoader;

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->getSelectionArgs(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)[Ljava/lang/String;

    move-result-object v7

    .line 105
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 106
    new-instance v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    invoke-direct {v2}, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;-><init>()V

    .line 108
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$recentPro:Ljava/lang/String;

    iput-object v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->bucketName:Ljava/lang/String;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->bucketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->tag:Ljava/lang/String;

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 111
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaLoader;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaLoader;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 112
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaLoader;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaLoader;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->EXTERNAL_URI:Landroid/net/Uri;

    sget-object v5, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const-string v8, "date_modified DESC"

    .line 113
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 114
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 115
    sget-object v4, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 116
    sget-object v5, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 117
    sget-object v7, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 118
    sget-object v8, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v8, v8, v12

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 119
    sget-object v12, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 120
    sget-object v12, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 121
    sget-object v12, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x6

    aget-object v12, v12, v13

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 122
    sget-object v12, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 123
    sget-object v12, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v13, 0x8

    aget-object v12, v12, v13

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 124
    sget-object v12, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v13, 0xb

    aget-object v12, v12, v13

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 125
    new-instance v33, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v33 .. v33}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :goto_0
    const/4 v12, 0x0

    .line 127
    iget-object v13, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->this$0:Lcom/netease/ntunisdk/piclib/loader/MediaLoader;

    .line 128
    invoke-static {v13}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/MediaLoader;)Ljava/lang/ref/WeakReference;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v25, v13

    check-cast v25, Landroid/content/Context;

    iget-boolean v15, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$finalSupportGif:Z

    move-object v13, v3

    move v14, v4

    move/from16 v26, v15

    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v30

    move/from16 v22, v31

    move/from16 v23, v32

    move-object/from16 v24, v33

    .line 127
    invoke-static/range {v12 .. v26}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->createMediaInfoEntity(Landroid/net/Uri;Landroid/database/Cursor;IIIIIIIIIILandroid/media/MediaMetadataRetriever;Landroid/content/Context;Z)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v12

    if-nez v12, :cond_0

    move/from16 v16, v7

    goto :goto_3

    .line 132
    :cond_0
    iget-object v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v14, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v13, v14, :cond_2

    .line 133
    iget v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    int-to-long v13, v13

    move/from16 v16, v7

    iget-wide v6, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$videoMaxSelectDuration:J

    cmp-long v17, v13, v6

    const/4 v6, 0x1

    if-lez v17, :cond_1

    .line 134
    iput-boolean v6, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    .line 136
    :cond_1
    iget-wide v13, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$videoMaxSelectSize:J

    const-wide/16 v17, 0x0

    cmp-long v7, v13, v17

    if-lez v7, :cond_3

    iget-wide v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->size:J

    iget-wide v6, v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$videoMaxSelectSize:J

    cmp-long v17, v13, v6

    const/4 v6, 0x1

    if-lez v17, :cond_3

    .line 137
    iput-boolean v6, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    goto :goto_1

    :cond_2
    move/from16 v16, v7

    .line 141
    :cond_3
    :goto_1
    iget-object v7, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    if-eqz v7, :cond_4

    .line 143
    iget-object v7, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    :cond_4
    new-instance v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    invoke-direct {v7}, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;-><init>()V

    .line 146
    iget-object v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    iput-object v13, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->bucketName:Ljava/lang/String;

    .line 147
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->tag:Ljava/lang/String;

    .line 148
    iget-object v13, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_2
    iget-object v7, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 153
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_5
    move/from16 v7, v16

    goto/16 :goto_0

    .line 156
    :cond_6
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 159
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 161
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local media count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaLoader"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the time consumption: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaLoader"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 99
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;->val$loadListener:Lcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;->loadComplete(Ljava/util/List;)V

    :cond_0
    return-void
.end method
