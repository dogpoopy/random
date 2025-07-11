.class Lcom/netease/mpay/oversea/e4$a;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Lcom/netease/mpay/oversea/e4$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e4$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/e4$b;

.field final synthetic c:Lcom/netease/mpay/oversea/e4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/e4;Ljava/lang/String;Lcom/netease/mpay/oversea/e4$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/e4$a;->c:Lcom/netease/mpay/oversea/e4;

    iput-object p2, p0, Lcom/netease/mpay/oversea/e4$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/e4$a;->b:Lcom/netease/mpay/oversea/e4$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$a;->c:Lcom/netease/mpay/oversea/e4;

    invoke-static {v0, p3}, Lcom/netease/mpay/oversea/e4;->a(Lcom/netease/mpay/oversea/e4;Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v0, v0

    .line 2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v2, 0x5000

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$a;->c:Lcom/netease/mpay/oversea/e4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/e4;->a(Lcom/netease/mpay/oversea/e4;)Ljava/util/LinkedHashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$a;->c:Lcom/netease/mpay/oversea/e4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/e4;->b(Lcom/netease/mpay/oversea/e4;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/e4$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$a;->b:Lcom/netease/mpay/oversea/e4$b;

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/mpay/oversea/e4$a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/e4$a$a;-><init>(Lcom/netease/mpay/oversea/e4$a;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
