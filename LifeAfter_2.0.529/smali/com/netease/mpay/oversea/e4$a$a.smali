.class Lcom/netease/mpay/oversea/e4$a$a;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/e4$a;->a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:Lcom/netease/mpay/oversea/e4$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/e4$a;ZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/e4$a$a;->d:Lcom/netease/mpay/oversea/e4$a;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/e4$a$a;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/oversea/e4$a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/e4$a$a;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$a$a;->d:Lcom/netease/mpay/oversea/e4$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/e4$a;->b:Lcom/netease/mpay/oversea/e4$b;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/e4$a$a;->a:Z

    iget-object v2, p0, Lcom/netease/mpay/oversea/e4$a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/e4$a$a;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/e4$b;->a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
