.class public Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;
.super Ljava/lang/Object;
.source "EntityInfoWithAdapter.java"


# instance fields
.field public adapterPosition:I

.field public adapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;>;"
        }
    .end annotation
.end field

.field public dataTag:Ljava/lang/String;

.field public entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field public state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V
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
            "entity",
            "adapter",
            "adapterPosition",
            "dataTag",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 17
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterRef:Ljava/lang/ref/WeakReference;

    .line 18
    iput p3, p0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    .line 19
    iput-object p4, p0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->dataTag:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    return-void
.end method
