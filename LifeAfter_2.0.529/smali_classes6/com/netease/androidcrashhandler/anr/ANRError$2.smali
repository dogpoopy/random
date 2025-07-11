.class Lcom/netease/androidcrashhandler/anr/ANRError$2;
.super Ljava/lang/Object;
.source "ANRError.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/anr/ANRError;->New(JLjava/lang/String;Z)Lcom/netease/androidcrashhandler/anr/ANRError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mainThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRError$2;->val$mainThread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/Thread;

    check-cast p2, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/netease/androidcrashhandler/anr/ANRError$2;->compare(Ljava/lang/Thread;Ljava/lang/Thread;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Thread;Ljava/lang/Thread;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRError$2;->val$mainThread:Ljava/lang/Thread;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-ne p2, v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 120
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
