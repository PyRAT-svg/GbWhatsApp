.class public final enum LX/34C;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements LX/0Wa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LX/34C;",
        ">;",
        "LX/0Wa;"
    }
.end annotation


# static fields
.field public static final synthetic A00:[LX/34C;

.field public static final enum A01:LX/34C;

.field public static final enum A02:LX/34C;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v4, LX/34C;

    const/4 v3, 0x0

    const-string v0, "NONE"

    invoke-direct {v4, v0, v3, v3}, LX/34C;-><init>(Ljava/lang/String;II)V

    sput-object v4, LX/34C;->A01:LX/34C;

    new-instance v2, LX/34C;

    const/4 v1, 0x1

    const-string v0, "VIDEO"

    invoke-direct {v2, v0, v1, v1}, LX/34C;-><init>(Ljava/lang/String;II)V

    sput-object v2, LX/34C;->A02:LX/34C;

    const/4 v0, 0x2

    new-array v0, v0, [LX/34C;

    aput-object v4, v0, v3

    aput-object v2, v0, v1

    sput-object v0, LX/34C;->A00:[LX/34C;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LX/34C;->value:I

    return-void
.end method

.method public static A00(I)LX/34C;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, LX/34C;->A02:LX/34C;

    return-object v0

    :cond_1
    sget-object v0, LX/34C;->A01:LX/34C;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LX/34C;
    .locals 1

    const-class v0, LX/34C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LX/34C;

    return-object v0
.end method

.method public static values()[LX/34C;
    .locals 1

    sget-object v0, LX/34C;->A00:[LX/34C;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX/34C;

    return-object v0
.end method
