.class public Lcom/netease/mpay/oversea/ui/o$g;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "g"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/oversea/ui/o;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/ui/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$g;->a:Lcom/netease/mpay/oversea/ui/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/thirdapi/e;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/e$a;->b:Lcom/netease/mpay/oversea/thirdapi/e$a;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$g;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->e()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$g;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/thirdapi/e;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o$g;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-static {p3, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/ui/o;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o$g;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-static {p3, p2}, Lcom/netease/mpay/oversea/ui/o;->b(Lcom/netease/mpay/oversea/ui/o;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o$g;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {p3, p1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
