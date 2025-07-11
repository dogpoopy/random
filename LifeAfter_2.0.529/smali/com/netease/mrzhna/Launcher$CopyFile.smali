.class Lcom/netease/mrzhna/Launcher$CopyFile;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CopyFile"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x40000


# instance fields
.field private m_buffer:[B

.field private m_copied_size:J

.field private m_copying_file:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;)V
    .locals 2

    .line 1016
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1018
    iput-wide v0, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copied_size:J

    const/4 p1, 0x0

    .line 1019
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    const/high16 p1, 0x40000

    new-array p1, p1, [B

    .line 1021
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_buffer:[B

    return-void
.end method

.method private copyAsset(Ljava/lang/String;J)V
    .locals 9

    .line 1033
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mrzhna/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1034
    iget-wide v1, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copied_size:J

    .line 1037
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1038
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v4}, Lcom/netease/mrzhna/Launcher;->access$1000(Lcom/netease/mrzhna/Launcher;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1041
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1042
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1044
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1046
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1048
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1050
    :goto_0
    iget-object v3, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 1052
    iget-object v5, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_buffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1053
    iget-wide v5, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copied_size:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copied_size:J

    goto :goto_0

    .line 1055
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1056
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1057
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    add-long/2addr v1, p2

    .line 1062
    iput-wide v1, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copied_size:J

    .line 1063
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to copy asset file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NeoXDevice"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private copyInitPng()V
    .locals 11

    .line 1068
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$1000(Lcom/netease/mrzhna/Launcher;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "init.bm"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1071
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 1072
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1073
    iget-object v3, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v3}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v4}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v4

    const-string v5, "init"

    invoke-static {v4, v5}, Lcom/netease/mrzhna/Launcher;->access$700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1075
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1076
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1077
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1078
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    .line 1079
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    .line 1081
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1083
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 1084
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 1085
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 1086
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 1087
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 1088
    invoke-static {v7, v6, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 1089
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1093
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lez v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_2

    .line 1096
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 1097
    iget-object v8, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v8}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v8

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    aput v9, v8, v2

    .line 1098
    iget-object v8, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v8}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v8

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    aput v9, v8, v7

    .line 1099
    iget-object v8, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v8}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    aput v9, v8, v6

    .line 1100
    iget-object v8, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v8}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v8

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    aput v4, v8, v5

    .line 1103
    :cond_2
    iget-object v4, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v4}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v4

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1104
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v2

    aget v2, v2, v7

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1105
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v2

    aget v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1106
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v2

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1110
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1111
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1112
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1113
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1114
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1121
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1122
    throw v0

    .line 1121
    :catch_0
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getCopiedSize()J
    .locals 2

    .line 1025
    iget-wide v0, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copied_size:J

    return-wide v0
.end method

.method public getCopyingFile()Ljava/lang/String;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 1127
    iput-wide v0, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copied_size:J

    const/4 v2, 0x0

    .line 1128
    iput-object v2, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    .line 1129
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->access$1100(Lcom/netease/mrzhna/Launcher;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/mrzhna/Launcher$AssetInfo;

    iget-object v4, v4, Lcom/netease/mrzhna/Launcher$AssetInfo;->Path:Ljava/lang/String;

    iput-object v4, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    .line 1132
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/mrzhna/Launcher$AssetInfo;

    iget-wide v5, v3, Lcom/netease/mrzhna/Launcher$AssetInfo;->Size:J

    invoke-direct {p0, v4, v5, v6}, Lcom/netease/mrzhna/Launcher$CopyFile;->copyAsset(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v2, "filelist.txt"

    .line 1135
    invoke-direct {p0, v2, v0, v1}, Lcom/netease/mrzhna/Launcher$CopyFile;->copyAsset(Ljava/lang/String;J)V

    .line 1136
    invoke-direct {p0}, Lcom/netease/mrzhna/Launcher$CopyFile;->copyInitPng()V

    .line 1137
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$CopyFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    new-instance v1, Lcom/netease/mrzhna/Launcher$CopyFile$1;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$CopyFile$1;-><init>(Lcom/netease/mrzhna/Launcher$CopyFile;)V

    invoke-virtual {v0, v1}, Lcom/netease/mrzhna/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
