.class public Lcom/netease/mpay/oversea/z2$a;
.super Ljava/lang/Object;
.source "EventHub.java"

# interfaces
.implements Lcom/netease/mpay/oversea/s4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/oversea/z2;

.field public b:Lcom/netease/mpay/oversea/h5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/h5<",
            "Lcom/netease/mpay/oversea/v8;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/z2;Lcom/netease/mpay/oversea/h5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/z2;",
            "Lcom/netease/mpay/oversea/h5<",
            "Lcom/netease/mpay/oversea/v8;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/z2$a;->c:Z

    .line 6
    iput-object p1, p0, Lcom/netease/mpay/oversea/z2$a;->a:Lcom/netease/mpay/oversea/z2;

    .line 7
    iput-object p2, p0, Lcom/netease/mpay/oversea/z2$a;->b:Lcom/netease/mpay/oversea/h5;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/z2;Lcom/netease/mpay/oversea/h5;Lcom/netease/mpay/oversea/y2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/z2$a;-><init>(Lcom/netease/mpay/oversea/z2;Lcom/netease/mpay/oversea/h5;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/z2$a;->c:Z

    return v0
.end method

.method public a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z2$a;->b:Lcom/netease/mpay/oversea/h5;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/h5;->a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/v8;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/z2$a;->a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/z2$a;->c:Z

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/z2$a;->a:Lcom/netease/mpay/oversea/z2;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z2$a;->b:Lcom/netease/mpay/oversea/h5;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/z2;->c(Lcom/netease/mpay/oversea/h5;)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/x2;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:send :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/x2;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Invoker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/z2$a;->a:Lcom/netease/mpay/oversea/z2;

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/oversea/z2;->a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)V

    return-void
.end method
