.class public Lcom/netease/mpay/oversea/k0;
.super Lcom/netease/mpay/oversea/s;
.source "BitmapSaveTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/s<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/netease/mpay/oversea/j0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/s;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/netease/mpay/oversea/k0;->r:Lcom/netease/mpay/oversea/j0;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/k0;->q:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/k0;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/k0;->r:Lcom/netease/mpay/oversea/j0;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/j0;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/k0;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/k0;->p:Ljava/lang/String;

    const-string v2, "image/png"

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/i6;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/k0;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/s;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/k0;->a(Ljava/lang/Boolean;)V

    return-void
.end method
