.class public final enum Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;
.super Ljava/lang/Enum;
.source "SelectedHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectedEntityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

.field public static final enum ADD:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

.field public static final enum REMOVE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

.field public static final enum UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 152
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    new-instance v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->ADD:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    new-instance v3, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    const-string v5, "REMOVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->REMOVE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 151
    sput-object v5, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->$VALUES:[Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 151
    const-class v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;
    .locals 1

    .line 151
    sget-object v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->$VALUES:[Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    return-object v0
.end method
