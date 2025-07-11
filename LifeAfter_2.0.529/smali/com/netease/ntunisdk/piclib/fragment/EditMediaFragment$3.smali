.class Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;
.super Ljava/lang/Object;
.source "EditMediaFragment.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->createNewMatrixImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 459
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResourceReady$0$EditMediaFragment$3()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$200(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getmImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$300(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$300(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->doMatrix()V

    .line 473
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$400(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$300(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setIsCrop(Z)V

    .line 475
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$500(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;Z)V

    :cond_1
    return-void
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "model",
            "target",
            "isFirstResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resource",
            "model",
            "target",
            "dataSource",
            "isFirstResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 467
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    iput-object p1, p2, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->mResource:Landroid/graphics/drawable/Drawable;

    .line 468
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->delayHandler:Landroid/os/Handler;

    new-instance p2, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$3$jGHdTJDYAn8Av2Eso8aca-rC_tE;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/piclib/fragment/-$$Lambda$EditMediaFragment$3$jGHdTJDYAn8Av2Eso8aca-rC_tE;-><init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "resource",
            "model",
            "target",
            "dataSource",
            "isFirstResource"
        }
    .end annotation

    .line 459
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$3;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
