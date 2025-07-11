.class Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/loader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagRequestListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field imageView:Lcom/netease/ntunisdk/piclib/view/TagImageView;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/ntunisdk/piclib/view/TagImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "imageView"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;->tag:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;->imageView:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    return-void
.end method


# virtual methods
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
            "TT;>;Z)Z"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;->imageView:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->resetCustomTag(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
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
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TT;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
