.class Lcom/netease/ntunisdk/piclib/utils/BitmapCache$1;
.super Landroid/util/LruCache;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/utils/BitmapCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/utils/BitmapCache;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "maxSize"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache$1;->this$0:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "evicted",
            "key",
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 49
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache$1;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "evicted",
            "key",
            "oldValue",
            "newValue"
        }
    .end annotation

    const/4 p1, 0x0

    .line 59
    :try_start_0
    iget-object p4, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache$1;->this$0:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    invoke-static {p4}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->access$100(Lcom/netease/ntunisdk/piclib/utils/BitmapCache;)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object p4

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache$1;->this$0:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->access$000(Lcom/netease/ntunisdk/piclib/utils/BitmapCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object p1

    .line 60
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p3, p2, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 61
    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 63
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p1, :cond_0

    .line 65
    :try_start_1
    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 49
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 52
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method
