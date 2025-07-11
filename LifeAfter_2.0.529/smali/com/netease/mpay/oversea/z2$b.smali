.class public Lcom/netease/mpay/oversea/z2$b;
.super Ljava/lang/Object;
.source "EventHub.java"

# interfaces
.implements Lcom/netease/mpay/oversea/v8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/oversea/z2;

.field public b:Lcom/netease/mpay/oversea/h5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/h5<",
            "Lcom/netease/mpay/oversea/s4;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/netease/mpay/oversea/s4;

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/z2;Lcom/netease/mpay/oversea/h5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/z2;",
            "Lcom/netease/mpay/oversea/h5<",
            "Lcom/netease/mpay/oversea/s4;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/z2$b;->d:Z

    .line 6
    iput-object p1, p0, Lcom/netease/mpay/oversea/z2$b;->a:Lcom/netease/mpay/oversea/z2;

    .line 7
    iput-object p2, p0, Lcom/netease/mpay/oversea/z2$b;->b:Lcom/netease/mpay/oversea/h5;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/z2;Lcom/netease/mpay/oversea/h5;Lcom/netease/mpay/oversea/y2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/z2$b;-><init>(Lcom/netease/mpay/oversea/z2;Lcom/netease/mpay/oversea/h5;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/x2;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/z2$b;->a:Lcom/netease/mpay/oversea/z2;

    invoke-static {v0, p0, p1}, Lcom/netease/mpay/oversea/z2;->a(Lcom/netease/mpay/oversea/z2;Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/z2$b;->d:Z

    return v0
.end method

.method public a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:Receiver onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/x2;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z2$b;->b:Lcom/netease/mpay/oversea/h5;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",listener key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z2$b;->b:Lcom/netease/mpay/oversea/h5;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/z2$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iput-object p1, p0, Lcom/netease/mpay/oversea/z2$b;->c:Lcom/netease/mpay/oversea/s4;

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/z2$b;->b:Lcom/netease/mpay/oversea/h5;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/h5;->a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/s4;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/z2$b;->a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/netease/mpay/oversea/x2;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:Receiver reply, mLastInvoker\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z2$b;->c:Lcom/netease/mpay/oversea/s4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z2$b;->c:Lcom/netease/mpay/oversea/s4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/s4;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z2$b;->c:Lcom/netease/mpay/oversea/s4;

    invoke-interface {v0, p0, p1}, Lcom/netease/mpay/oversea/h5;->a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
