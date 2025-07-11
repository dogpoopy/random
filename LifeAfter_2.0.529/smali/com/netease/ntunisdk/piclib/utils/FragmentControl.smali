.class public Lcom/netease/ntunisdk/piclib/utils/FragmentControl;
.super Ljava/lang/Object;
.source "FragmentControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentControl"


# instance fields
.field private container:I

.field private manager:Landroidx/fragment/app/FragmentManager;

.field private stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addFragment(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentClass"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    new-array v3, v0, [Ljava/lang/Class;

    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_0

    return v0

    .line 52
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 53
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->manager:Landroidx/fragment/app/FragmentManager;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    .line 57
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 59
    :cond_2
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3, v0, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 60
    iget v3, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->container:I

    invoke-virtual {v2, v3, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const/16 p1, 0x1001

    .line 61
    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 62
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFragment e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FragmentControl"

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->manager:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->container:I

    return-void
.end method

.method public getSize()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public removeFragment()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v4

    .line 79
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    .line 81
    :cond_1
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 82
    invoke-virtual {v5, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 83
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v3

    .line 87
    :cond_2
    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/16 v3, 0x1001

    .line 88
    invoke-virtual {v5, v3}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    aput-object v1, v0, v2

    goto :goto_0

    :cond_3
    const/16 v1, 0x1003

    .line 91
    invoke-virtual {v5, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 93
    :goto_0
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object v0
.end method

.method public setContainer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 35
    iput p1, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->container:I

    return-void
.end method

.method public setManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->manager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public setStack(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/FragmentControl;->stack:Ljava/util/LinkedList;

    return-void
.end method
